void main() async {
  print("Getting your order ....");
  var order = await getOrder();
  try {
     print("Your Order : $order");  //complete with data
  } catch (error) {
     print("Sorry, $error");        //complete with error
  } finally {
     print("Thank You");            //When Complete (with data)
  }
 
}


Future<String> getOrder(){
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = true;
    if(isStockAvailable){
      return "Coffee Boba";
    }else{
      throw "Out of Stock";
    }
  });
}