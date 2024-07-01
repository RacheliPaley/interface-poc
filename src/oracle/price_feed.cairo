




trait ILiquityBase<TContractState> {

    fn priceFeed(self:@TContractState) external view -> IPriceFeed;
}