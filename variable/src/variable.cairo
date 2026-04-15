#[executable]
fn main() {
   // let mut x = 5;

    //println!("The value of x is: {}", x);
    //x = 6;
    //println!("the value of x is: {}", x);

    let x = 9;
    let x = x - 3;

    {
        let x = x * 2;
        println!("inner x {}", x);
    }

    println!("outer x {}", x)
    

}
