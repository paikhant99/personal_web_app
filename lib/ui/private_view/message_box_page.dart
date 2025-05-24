import 'package:flutter/material.dart';
import 'package:my_portfolios/ui/private_view/message_box_page_viewmodel.dart';
import 'package:provider/provider.dart';

class MessageBoxPage extends StatefulWidget {
  const MessageBoxPage({super.key});

  @override
  State<MessageBoxPage> createState() => _MessageBoxPageState();
}

class _MessageBoxPageState extends State<MessageBoxPage> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Provider.of<MessageBoxPageViewmodel>(context, listen: false)
        .getAllComments();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MessageBoxPageViewmodel>(
        builder: (context, messageBoxPageVM, child) {
      return (messageBoxPageVM.exception != null)
          ? const Center(
              child: Text("Sorry, Empty Bucket Retrieved!"),
            )
          : ListView.builder(
              itemCount: messageBoxPageVM.comments.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                      'Phone Number : ${messageBoxPageVM.comments[index].ph_no}'),
                  subtitle: Text(messageBoxPageVM.comments[index].description),
                );
              });
    });
  }
}
