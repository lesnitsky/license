import 'dart:io';
import 'package:guard/guard.dart';
import 'package:l_cli/cli.dart';
import 'package:l_cli/command.dart';
import 'package:l_cli/question.dart';

import '../lib/license.dart';

class LicenseCommand extends Command {
  LicenseCommand() : super('license', 'Generates license');

  @override
  Future<void> exec(List<String> args) async {
    final licenseType = guard(() => args.first, 'mit');
    String license;

    switch (licenseType) {
      case 'mit':
        license = mit(
          LicenseData(
            copyrightHolderName: await question('Copyright holder name'),
          ),
        );

        break;

      default:
        throw new Exception('Unknown license type "$licenseType"');
    }

    final f = File('${Directory.current.path}/LICENSE')..createSync();
    f.writeAsStringSync(license);

    print('Done!');

    return null;
  }
}

void main(List<String> args) async {
  final cli = new Cli();
  cli.add(LicenseCommand()..name = 'main');
  await cli.exec(args);
}
