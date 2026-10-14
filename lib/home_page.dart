import 'package:flutter/material.dart';
import 'shopping_cart.dart';
import 'product.dart';
class HomePage extends StatefulWidget {
  const HomePage();

  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {

  String query = '';

  void search(String value ){
    setState(() {
      query = value ;
    });

  }
  @override
  Widget build(BuildContext context) {

    List<Product> filtered_products = products.where(
        (n){
          return n.name.contains(query);
        }
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping App",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2
        ),),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(width: 3,),
          Icon(Icons.search)
        ],
      ),

      body :Center(child :


      // SingleChildScrollView(
      //   child:
      //   Column(
      //     children: [
      //       ShoppingCart(product : products[0]),
      //       ShoppingCart(product : products[1]),
      //       ShoppingCart(product : products[2]),
      //
      //
      //     ],
      //   ),
      // )

        // SizedBox(
        //   height: double.infinity,
        //   width : MediaQuery.of(context).size.width/4,
        //   child : ListView.builder(
        //     scrollDirection: Axis.vertical,
        //     itemBuilder:
        //       (BuildContext context, int index )
        //   {
        //     return  ShoppingCart(product : products[index]);
        //   },
        //     itemCount: products.length,
        //
        //   )
        //
        // )

      Column(
        children: [
          TextField(
            onChanged: search,
          )
            ,
          Expanded(child:
          GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
              childAspectRatio: 1.4
          ),
            itemBuilder:
                (BuildContext context, int index )
            {
              return  ShoppingCart(product : filtered_products[index]);
            },
            itemCount: filtered_products.length,
          ))
        ],
      )


    )

    );
  }
}
