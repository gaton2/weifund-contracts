contract PrivateServiceRegistry {
  address[] public services;
  mapping(address => uint) public ids;

  modifier isRegisteredService(address _service) {
    if (services[ids[_service]] != address(0) && _service != address(0)) {
      _
    }
  }

  function register(address _service) internal returns (uint serviceId) {
    if (isService(_service)) {
      throw;
    }

    serviceId = services.length++;
    services[serviceId] = _service;
    ids[_service] = serviceId;
  }

  function isService(address _service) isRegisteredService(_service) constant public returns (bool) {
    return true;
  }
}
