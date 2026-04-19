fn f(x: usize) -> usize { x + 1 }
#[executable]
fn main() {
    let y={
            let x = 3;
            x + 1
    };

     println!("The value of y is: {}", y);

     let re:u32 = add(3, 4);

     println!("the output from that action is {}", re);

     println!("{}", f({
    let y = 1;
    y + 1
  }));

}

fn add(x:u32, y:u32) -> u32 {
        let result:u32 =x + y; 
        result

}
