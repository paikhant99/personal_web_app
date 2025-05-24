import 'package:flutter/material.dart';
import 'package:multiple_result/multiple_result.dart';
import 'package:my_portfolios/repositories/comment_repo.dart';
import 'package:my_portfolios/ui/customs/custom_style.dart';
import 'package:my_portfolios/ui/public_view/home_screen_viewmodel.dart';
import 'package:provider/provider.dart';

class TopNavigationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const TopNavigationAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
              onPressed: () {
                Provider.of<HomeScreenViewmodel>(context, listen: false)
                    .setPageNo(0);
                print('Navigating to @SelfCall HomePage');
              },
              child: const Text(
                'HOME',
                style: TextStyle(color: Colors.white),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
              onPressed: () {
                Provider.of<HomeScreenViewmodel>(context, listen: false)
                    .setPageNo(1);
              },
              child: const Text(
                'PORTFOLIO',
                style: TextStyle(color: Colors.white),
              )),
        ),
      ],
    );
  }
}

class ContactMeDialog extends StatefulWidget {
  const ContactMeDialog({super.key});

  @override
  State<ContactMeDialog> createState() => _ContactMeDialogState();
}

class _ContactMeDialogState extends State<ContactMeDialog> {
  late TextEditingController tPhnoController;
  late TextEditingController tCmtController;

  @override
  void initState() {
    super.initState();
    tPhnoController = TextEditingController();
    tCmtController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Imagining Your Business Growth?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 200,
                child: TextField(
                  controller: tPhnoController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Phone Number'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 200,
                child: TextField(
                  controller: tCmtController,
                  maxLines: 5,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), hintText: 'Comment'),
                ),
              ),
            ),
            ElevatedButton(
                style: greenElevatedButtonStyle,
                onPressed: () {
                  Provider.of<ContactMeDialogViewmodel>(context, listen: false)
                      .makeComment(tPhnoController.text, tCmtController.text);
                  Navigator.pop(context);
                },
                child: const Text('Send'))
          ],
        ),
      ),
    );
  }
}

class ContactMeDialogViewmodel extends ChangeNotifier {
  CommentRepository commentRepo;

  ContactMeDialogViewmodel({required this.commentRepo});

  Future<Result<String, Exception>> makeComment(String phno, String desc) {
    return commentRepo.makeNewComment(phno, desc);
  }
}
