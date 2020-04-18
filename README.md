# license

[![lesnitsky.dev](https://lesnitsky.dev/shield.svg?hash=21570)](https://lesnitsky.dev?utm_source=license)
[![GitHub stars](https://img.shields.io/github/stars/lesnitsky/license.svg?style=social)](https://github.com/lesnitsky/license)
[![Twitter Follow](https://img.shields.io/twitter/follow/lesnitsky_dev.svg?label=Follow%20me&style=social)](https://twitter.com/lesnitsky_dev)

Command line tool which creates LICENSE file for your project

## Installation

pubspec.yaml:

```yaml
dependencies:
  license: ^1.0.0
```

or

```sh
pub global activate license
```

## Example

```dart
import 'package:license/license.dart';

void main() {
  final licenseData = LicenseData(copyrightHolderName: 'John Brown');
  print(mit(licenseData));
}

```

From terminal

```
license
```

## License

MIT
