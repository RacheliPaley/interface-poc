#[starknet::interface]
trait IPriceFeed<TContractState> {
    
   
    fn fetchPrice(self:@TContractState) -> u256;
}
