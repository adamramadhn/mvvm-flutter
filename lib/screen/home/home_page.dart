import 'package:api_testing/models/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../models/product_list.dart';
import '../contact/contact_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<ContactViewModel>(context, listen: false).getAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelView = Provider.of<ContactViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Screen'),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_checkout_rounded))
        ],
      ),
      body: ListView.builder(
          itemCount: modelView.contacts.length,
          itemBuilder: (context, index) {
            final contact = modelView.contacts[index];
            return ListTile(
              title: Text(contact.name),
              subtitle: Text(contact.phone),
            );
          }),
    );
  }
}

class ModelList extends StatelessWidget {
  const ModelList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> modelList = productModel().productList;
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.orange.withOpacity(0.5),
      child: GridView.builder(
          itemCount: modelList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Text(modelList[index]);
          }),
    );
  }
}
