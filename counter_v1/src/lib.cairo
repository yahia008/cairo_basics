/// Interface representing `HelloContract`.
/// This interface allows modification and retrieval of the contract balance.
#[starknet::interface]
pub trait ICounter<T> {
    /// Increase contract balance.
    fn increase_count(ref self: T, amount: u32);
    /// Retrieve contract balance.
    fn get_count(self: @T) -> u32;
}

/// Simple contract for managing balance.
#[starknet::contract]
mod Counter {
   use starknet::storage::{StoragePointerReadAccess, StoragePointerWriteAccess};
    use super::ICounter;
    #[storage]
    struct Storage{
        count:u32
    }

    #[abi(embed_v0)]
    impl ICounterimpl of ICounter<ContractState> {
       fn increase_count(ref self: ContractState, amount:u32){
         self.count.write(value:amount);
       }

       fn get_count(self: @ContractState) -> u32 {
        return self.count.read();
       }
    }

}
