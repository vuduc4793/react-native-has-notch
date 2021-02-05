import { NativeModules } from 'react-native';

type HasNotchType = {
  multiply(a: number, b: number): Promise<number>;
};

const { HasNotch } = NativeModules;

export default HasNotch as HasNotchType;
