
use core::dict::Felt252Dict;
#[executable]
fn main() {
    let mut balance:Felt252Dict<u32> = Default::default();
    balance.insert('Alex', 100);
    balance.insert('jane', 100);

    let alex_balance = balance.get('Alex');

    println!("alex balnce {alex_balance}");

    let  arr = array![1, 2 ,3, 5];

    let mut dict:Felt252Dict<Nullable<Array<u8>>> = Default::default();

    dict.insert(0, NullableTrait::new(arr));
    println!("Array inserted successfully.");






}
