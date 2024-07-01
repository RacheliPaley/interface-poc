#[starknet::contract]
mod MyContract {
    use openzeppelin::security::InitializableComponent;

    component!(path: InitializableComponent, storage: initializable, event: InitializableEvent);

    #[storage]
    struct Storage {
        #[substorage(v0)]
        initializable: InitializableComponent::Storage
    }

    #[event]
    #[derive(Drop, starknet::Event)]
    enum Event {
        #[flat]
        InitializableEvent: InitializableComponent::Event
    }
}