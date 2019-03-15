var OILDToken = artifacts.require("OILDToken");

module.exports = function(deployer) {
    // deployment steps
    deployer.deploy(OILDToken);
};
