use debug::PrintTrait;

#[derive(Drop)]
enum Direction{
    North,
    East,
    South,
    West,
}

#[derive(Drop)]
enum Message{
    Quit,
    Echo:felt252,
    Move:(u128, u128),
}

fn main(){

let direction = Direction::North;
let msg: Message = Message::Quit;
msg.process();

let ech: Message = Message::Echo('hello');
ech.process();
let mo: Message = Message::Move((2,3));
mo.process();
}
// trait Implementations for Enums
trait Processing{
fn process(self: Message);
}

impl ProcessingImpl of Processing {
    fn process(self: Message){
        match self{
            Message::Quit =>{
                'quitting'.print();
            },
            Message::Echo(value)=>{
                value.print();
            },
            Message::Move((x, y)) =>{
                'moving'.print();
            },
        }
    }
}

