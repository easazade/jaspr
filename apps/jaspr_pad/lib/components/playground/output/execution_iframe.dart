import 'package:jaspr/components.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import 'execution_service.dart';
import 'execution_service.imports.dart';

class ExecutionIFrame extends StatelessComponent {
  const ExecutionIFrame({Key? key}) : super(key: key);

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield FindChildNode(
      onNodeAttached: (node) {
        if (kIsWeb) {
          var iframe = context.read(iframeProvider);
          if (iframe == null || iframe != node.nativeElement) {
            context.read(iframeProvider.notifier).state = node.nativeElement as IFrameElementOrStubbed;
          }
        }
      },
      child: DomComponent(
        tag: 'iframe',
        id: 'frame',
        attributes: {
          'sandbox': 'allow-scripts allow-popups',
          'flex': '',
          'src': 'https://dartpad.dev/scripts/frame_dark.html',
        },
      ),
    );
  }
}
