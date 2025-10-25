import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import { Contract } from "ethers";

/**
 * Deploys a contract named "FarmContract" using the deployer account
 *
 * @param hre HardhatRuntimeEnvironment object.
 */
const deployYourContract: DeployFunction = async function (hre: HardhatRuntimeEnvironment) {
  const { deployer } = await hre.getNamedAccounts();
  const { deploy } = hre.deployments;

  await deploy("FarmContract", {
    from: deployer,
    // Contract constructor arguments (FarmContract doesn't need any)
    args: [],
    log: true,
    autoMine: true,
  });

  // Get the deployed contract to interact with it after deploying.
  const farmContract = await hre.ethers.getContract<Contract>("FarmContract", deployer);
  console.log("✅ FarmContract deployed successfully!");
  console.log("📝 Contract Count:", await farmContract.contractCount());
};

export default deployYourContract;

deployYourContract.tags = ["FarmContract"];
