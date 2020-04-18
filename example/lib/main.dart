import 'package:license/license.dart';

void main() {
  final licenseData = LicenseData(copyrightHolderName: 'John Brown');
  print(mit(licenseData));
}
