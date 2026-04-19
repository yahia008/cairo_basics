#[executable]
fn main() {
    
    let number = 3;

    if number == 5 {
        println!("i am five after all {number}");
    }
    else {
        println!("nahh am three always {number}");
    }

    let condition= true;

    let number2 = if condition {
        5
    }else{
        7
    };

    println!("am always true {number2}");

    ////////////////////// loop
    //let mut i:usize = 0;

   /// loop {
         ///  if i > 10 {
            ///   break;
         ///   ///  }
          /// if i == 5 {
           /// i +=1;
         ///   continue;
         ///  }
         ///  println!("i = {i}");
        //i+=1;
      /// }  ///
      /// 

 let mut counter:usize = 0;
 let res = loop {
    if counter == 10 {
        break counter * 2;
    }
    counter +=1;

 } ;
 println!("res = {res}")
    let x = recursive_function(0);
    //println!("x is {x}")

    let a = [1, 2, 3, 4, 5].span();
    for element in a {
        println!("elenent {element}")
    }
}

fn recursive_function(mut x: felt252) -> felt252 {
    if x == 2 {
        x
        
    } else {
        recursive_function(x + 1)
    }
}