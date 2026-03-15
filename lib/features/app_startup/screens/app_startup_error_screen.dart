import 'package:classipod/l10n/generated/app_localizations.dart';
import 'package:flutter/cupertino.dart';

class AppStartupError extends StatelessWidget {
  final Object error;
  final VoidCallback onRetry;
  const AppStartupError({
    super.key,
    required this.error,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      builder: (ctx, _) => CupertinoPageScaffold(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${AppLocalizations.of(ctx)?.commonErrorText ?? ''} $error',
              ),
              CupertinoButton(
                onPressed: onRetry,
                child: Text(
                  AppLocalizations.of(ctx)?.retryButtonText ?? 'Retry',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
