import React, {useState} from 'react';
import {
  SafeAreaView,
  Text,
  NativeModules,
  Button,
  StyleSheet,
} from 'react-native';

const App = () => {
  const {ReactOneCustomMethod} = NativeModules;
  const [id, setId] = useState('Press the button to get The ID');

  const getId = async() => {
    ReactOneCustomMethod.getPhoneID()
      .then((res: string) => {
        setId('ID: ' + res);
        console.log(res)
      })
      .catch((err: any) => {
        console.error(err);
      });
  };

  return (
    <SafeAreaView style={styles.wrapper}>
      <Text style={styles.id}>{id}</Text>
      <Button title="Get Id" onPress={getId} />
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  wrapper: {
    display: 'flex',
    flex: 1,
    justifyContent: 'center',
    paddingHorizontal: 20,
  },
  id: {
    textAlign: 'center',
    marginBottom: 20,
  },
});

export default App;
