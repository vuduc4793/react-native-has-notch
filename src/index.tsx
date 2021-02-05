import { NativeModules } from "react-native";

type HasNotchType = {
  hasNotch: boolean;
};

const HasNotch = NativeModules.HasNotch.getConstants();

export default HasNotch as HasNotchType;
