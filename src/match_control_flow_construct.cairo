use debug::PrintTrait;

#[derive(Drop)]
enum UsState {
    Alabama: (),
    Alaska: (),
}

#[derive(Drop)]
enum Coin {
    Penny: (),
    Nickel: (),
    Dime: (),
    Quarter: (UsState,),
}

fn main(){
    value_in_cents("Penny");
}

impl UsStatePrintImpl of PrintTrait<UsState> {
    fn print(self: UsState) {
        match self {
            UsState::Alabama(_) => ('Alabama').print(),
            UsState::Alaska(_) => ('Alaska').print(),
        }
    }
}

// fn value_in_cents(coin: Coin) ->felt252{
//     match coin{

//         Coin::Penny(_) =>{
//             // ('Lucky penny!').print();
//             1},
//         Coin::Nickel(_) =>5,
//         Coin::Dime(_) =>10,
//         Coin::Quarter(state) => {
//             state.print();
//             25
//         },
//     }
// }
fn value_in_cents(coin: Coin) -> felt252 {
    match coin {
        Coin::Penny(_) => 1,
        Coin::Nickel(_) => 5,
        Coin::Dime(_) => 10,
        Coin::Quarter(state) => {
            state.print();
            25
        },
    }
}

