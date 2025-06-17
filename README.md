# internationalization_and_localization

Flutter sample project to setup localizations

## Getting Started

1. Add dependencies in pubspec.yaml
2. Set the generate property inside flutter to true
3. Create a folder(l10n) inside lib which will contain all the translation files that we will create.
4. Create a l10n.yaml file which contains the paths of folder containing the .arb files and the path of folder, in which we want to keep the generated files
5. Specify the locales inside MaterialApp
6. Then we can use localization across the app

Note: I have created TODO's using which we can closely check all the steps required to setup Internationalization and Localization 

### Internationalization (i18n)
Internationalization is the design and development process that makes software capable of being adapted for different languages, regions, and cultures without requiring engineering changes to the source code.

Key characteristics:

1. It's a one-time development effort done during the initial coding phase
2. Focuses on creating a flexible architecture that can accommodate multiple locales
3. Involves preparing the codebase for future localization efforts
4. Often abbreviated as "i18n" (18 letters between 'i' and 'n')

Example:
// Bad - hardcoded text
Text('Hello, World!')

// Good - internationalized
Text(AppLocalizations.of(context)!.greeting)

### Localization (l10n)
Localization is the adaptation process where you actually translate and customize the internationalized software for specific target markets, languages, or regions.

Key characteristics:

1. It's an ongoing, iterative process that happens for each target market
2. Focuses on actual content creation and cultural adaptation
3. Involves translating and contextualizing the prepared content
4. Often abbreviated as "l10n" (10 letters between 'l' and 'n')

Example: 

// English (app_en.arb)
{
  "greeting": "Hello, World!"
}

// Spanish (app_es.arb)
{
  "greeting": "¡Hola, Mundo!"
}

// Arabic (app_ar.arb)
{
  "greeting": "مرحبا بالعالم!"
}

### The Relationship
Think of internationalization as building the foundation and localization as decorating the house. You internationalize once to create a flexible framework, then localize multiple times for each target market.