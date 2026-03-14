import 'dart:ui';

import 'package:classipod/core/services/audio_files_service.dart';
import 'package:classipod/core/services/window_controls_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FloatingWindowControls extends ConsumerWidget {
  const FloatingWindowControls({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (kIsWeb || defaultTargetPlatform != TargetPlatform.macOS) {
      return const SizedBox.shrink();
    }

    final importState = ref.watch(musicImportStateProvider);

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 18, sigmaY: 18),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color(0xCCF7F7F7),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: const Color(0x1A000000)),
            boxShadow: const [
              BoxShadow(
                blurRadius: 14,
                color: Color(0x33000000),
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const _WindowControlButton(
                  color: Color(0xFFFF5F57),
                  onPressed: WindowControlsService.close,
                  label: 'Close',
                ),
                const SizedBox(width: 10),
                const _WindowControlButton(
                  color: Color(0xFFFFBD2E),
                  onPressed: WindowControlsService.minimize,
                  label: 'Minimize',
                ),
                const SizedBox(width: 10),
                const _WindowControlButton(
                  color: Color(0xFF28C840),
                  onPressed: WindowControlsService.zoom,
                  label: 'Zoom',
                ),
                const SizedBox(width: 14),
                _LibraryMenuButton(
                  isImporting: importState.isImporting,
                  onPressed: () => _showLibraryMenu(
                    context,
                    ref,
                    importState,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showLibraryMenu(
    BuildContext context,
    WidgetRef ref,
    MusicImportState importState,
  ) async {
    await showCupertinoModalPopup<void>(
      context: context,
      builder: (context) {
        return CupertinoActionSheet(
          title: const Text('Music Library'),
          message: importState.isImporting
              ? const Text('Import in progress')
              : null,
          actions: [
            CupertinoActionSheetAction(
              onPressed: () {
                Navigator.of(context).pop();
                ref
                    .read(audioFilesServiceProvider.notifier)
                    .pickAndImportDirectory();
              },
              child: const Text('Import Music Folder'),
            ),
            CupertinoActionSheetAction(
              isDestructiveAction: true,
              onPressed: () {
                Navigator.of(context).pop();
                ref.read(audioFilesServiceProvider.notifier).purgeLibrary();
              },
              child: const Text('Purge Library'),
            ),
            if (importState.isImporting)
              CupertinoActionSheetAction(
                isDestructiveAction: true,
                onPressed: () {
                  Navigator.of(context).pop();
                  ref
                      .read(audioFilesServiceProvider.notifier)
                      .cancelImport();
                },
                child: const Text('Cancel Import'),
              ),
          ],
          cancelButton: CupertinoActionSheetAction(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Close'),
          ),
        );
      },
    );
  }
}

class _WindowControlButton extends StatefulWidget {
  final Color color;
  final Future<void> Function() onPressed;
  final String label;

  const _WindowControlButton({
    required this.color,
    required this.onPressed,
    required this.label,
  });

  @override
  State<_WindowControlButton> createState() => _WindowControlButtonState();
}

class _WindowControlButtonState extends State<_WindowControlButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final double size = _isHovering ? 14 : 12;

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          height: size,
          width: size,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0x33000000),
              width: 0.8,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: _isHovering ? 6 : 2,
                color: widget.color.withOpacity(0.35),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LibraryMenuButton extends StatefulWidget {
  final bool isImporting;
  final VoidCallback onPressed;

  const _LibraryMenuButton({
    required this.isImporting,
    required this.onPressed,
  });

  @override
  State<_LibraryMenuButton> createState() => _LibraryMenuButtonState();
}

class _LibraryMenuButtonState extends State<_LibraryMenuButton> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final Color backgroundColor = _isHovering
        ? const Color(0x1A000000)
        : const Color(0x0D000000);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0x1A000000)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                CupertinoIcons.folder,
                size: 14,
                color: Color(0xFF1F1F1F),
              ),
              if (widget.isImporting) ...[
                const SizedBox(width: 6),
                const _ImportIndicatorDot(),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _ImportIndicatorDot extends StatelessWidget {
  const _ImportIndicatorDot();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 6,
      height: 6,
      decoration: const BoxDecoration(
        color: Color(0xFF28C840),
        shape: BoxShape.circle,
      ),
    );
  }
}
