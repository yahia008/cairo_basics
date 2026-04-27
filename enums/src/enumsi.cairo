#[derive(Copy, Drop)]
enum Message {
    Quit,
    Echco:felt252,
    Move:(u128, u128)
    
}

trait Processing {
   fn process(self:Message); 
}

impl ProssesingImp of Processing{
    fn process(self:Message){
        match self{
            Message::Quit => {println!("quiting")},
            Message::Echco(val) => {println!("value {val}")},
            Message::Move((x, y)) => {println!("move from {x}, {y}")}

        }
    }
}

#[executable]
fn main() {

    let message = Message::Quit;
    message.process();
    
}
