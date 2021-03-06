library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sid_coeffs is
  port (
  clk: in std_logic;
  addr: in integer range 0 to 2047;
  val: out std_logic_vector(15 downto 0)
  );
end entity;

architecture beh of sid_coeffs is

type mtype is array(0 to 2047) of std_logic_vector(15 downto 0);

constant coef: mtype := (
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d5",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02d8",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02db",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02df",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e2",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e5",
x"02e8",
x"02e8",
x"02e8",
x"02e8",
x"02e8",
x"02e8",
x"02e8",
x"02e8",
x"02e8",
x"02e8",
x"02e8",
x"02ec",
x"02ec",
x"02ec",
x"02ec",
x"02ec",
x"02ec",
x"02ec",
x"02ec",
x"02ec",
x"02ec",
x"02ef",
x"02ef",
x"02ef",
x"02ef",
x"02ef",
x"02ef",
x"02ef",
x"02ef",
x"02ef",
x"02ef",
x"02f2",
x"02f2",
x"02f2",
x"02f2",
x"02f2",
x"02f2",
x"02f2",
x"02f2",
x"02f6",
x"02f6",
x"02f6",
x"02f6",
x"02f6",
x"02f6",
x"02f6",
x"02f6",
x"02f6",
x"02f9",
x"02f9",
x"02f9",
x"02f9",
x"02f9",
x"02f9",
x"02f9",
x"02f9",
x"02f9",
x"02fc",
x"02fc",
x"02fc",
x"02fc",
x"02fc",
x"02fc",
x"02fc",
x"02fc",
x"02fc",
x"0300",
x"0300",
x"0300",
x"0300",
x"0300",
x"0300",
x"0300",
x"0300",
x"0300",
x"0303",
x"0303",
x"0303",
x"0303",
x"0303",
x"0303",
x"0303",
x"0303",
x"0303",
x"0306",
x"0306",
x"0306",
x"0306",
x"0306",
x"0306",
x"0306",
x"0306",
x"0309",
x"0309",
x"0309",
x"0309",
x"0309",
x"0309",
x"0309",
x"0309",
x"030d",
x"030d",
x"030d",
x"030d",
x"030d",
x"030d",
x"030d",
x"0310",
x"0310",
x"0310",
x"0310",
x"0310",
x"0310",
x"0310",
x"0313",
x"0313",
x"0313",
x"0313",
x"0313",
x"0313",
x"0317",
x"0317",
x"0317",
x"0317",
x"0317",
x"0317",
x"031a",
x"031a",
x"031a",
x"031a",
x"031a",
x"031a",
x"031d",
x"031d",
x"031d",
x"031d",
x"031d",
x"0320",
x"0320",
x"0320",
x"0320",
x"0320",
x"0324",
x"0324",
x"0324",
x"0324",
x"0324",
x"0327",
x"0327",
x"0327",
x"0327",
x"0327",
x"032a",
x"032a",
x"032a",
x"032a",
x"032e",
x"032e",
x"032e",
x"032e",
x"0331",
x"0331",
x"0331",
x"0331",
x"0334",
x"0334",
x"0334",
x"0338",
x"0338",
x"0338",
x"0338",
x"033b",
x"033b",
x"033b",
x"033b",
x"033e",
x"033e",
x"033e",
x"033e",
x"0341",
x"0341",
x"0341",
x"0345",
x"0345",
x"0345",
x"0345",
x"0348",
x"0348",
x"0348",
x"0348",
x"034b",
x"034b",
x"034b",
x"034f",
x"034f",
x"034f",
x"034f",
x"0352",
x"0352",
x"0352",
x"0355",
x"0355",
x"0355",
x"0355",
x"0358",
x"0358",
x"0358",
x"035c",
x"035c",
x"035c",
x"035c",
x"035f",
x"035f",
x"035f",
x"0362",
x"0362",
x"0362",
x"0366",
x"0366",
x"0366",
x"0369",
x"0369",
x"0369",
x"036c",
x"036c",
x"036c",
x"0370",
x"0370",
x"0370",
x"0373",
x"0373",
x"0373",
x"0376",
x"0376",
x"0376",
x"0379",
x"0379",
x"0379",
x"037d",
x"037d",
x"0380",
x"0380",
x"0380",
x"0383",
x"0383",
x"0383",
x"0387",
x"0387",
x"038a",
x"038a",
x"038d",
x"038d",
x"038d",
x"0390",
x"0390",
x"0394",
x"0394",
x"0397",
x"0397",
x"0397",
x"039a",
x"039a",
x"039e",
x"039e",
x"03a1",
x"03a1",
x"03a4",
x"03a4",
x"03a8",
x"03a8",
x"03ab",
x"03ab",
x"03ae",
x"03ae",
x"03b1",
x"03b1",
x"03b5",
x"03b8",
x"03b8",
x"03bb",
x"03bb",
x"03bf",
x"03bf",
x"03c2",
x"03c5",
x"03c5",
x"03c8",
x"03c8",
x"03cc",
x"03cf",
x"03cf",
x"03d2",
x"03d6",
x"03d6",
x"03d9",
x"03dc",
x"03dc",
x"03e0",
x"03e0",
x"03e3",
x"03e6",
x"03e6",
x"03e9",
x"03ed",
x"03ed",
x"03f0",
x"03f0",
x"03f3",
x"03f7",
x"03f7",
x"03fa",
x"03fd",
x"03fd",
x"0400",
x"0400",
x"0404",
x"0404",
x"0407",
x"040a",
x"040a",
x"040e",
x"040e",
x"0411",
x"0414",
x"0414",
x"0418",
x"0418",
x"041b",
x"041e",
x"041e",
x"0421",
x"0421",
x"0425",
x"0428",
x"0428",
x"042b",
x"042b",
x"042f",
x"0432",
x"0432",
x"0435",
x"0438",
x"0438",
x"043c",
x"043c",
x"043f",
x"0442",
x"0442",
x"0446",
x"0449",
x"044c",
x"044c",
x"0450",
x"0453",
x"0453",
x"0456",
x"0459",
x"045d",
x"045d",
x"0460",
x"0463",
x"0467",
x"0467",
x"046a",
x"046d",
x"0470",
x"0474",
x"0477",
x"0477",
x"047a",
x"047e",
x"0481",
x"0484",
x"0488",
x"048b",
x"048e",
x"0491",
x"0495",
x"0498",
x"049b",
x"049f",
x"04a2",
x"04a5",
x"04a8",
x"04ac",
x"04af",
x"04b2",
x"04b6",
x"04b9",
x"04c0",
x"04c3",
x"04c6",
x"04c9",
x"04cd",
x"04d3",
x"04d7",
x"04da",
x"04dd",
x"04e4",
x"04e7",
x"04ee",
x"04f1",
x"04f4",
x"04fb",
x"04fe",
x"0505",
x"0508",
x"050f",
x"0512",
x"0519",
x"051c",
x"0522",
x"0526",
x"052c",
x"0533",
x"0536",
x"053d",
x"0543",
x"0547",
x"054d",
x"0554",
x"055a",
x"0561",
x"0568",
x"056b",
x"0571",
x"0578",
x"057f",
x"0585",
x"058c",
x"0592",
x"0599",
x"059c",
x"05a3",
x"05a9",
x"05b0",
x"05b7",
x"05bd",
x"05c4",
x"05ca",
x"05d1",
x"05d8",
x"05de",
x"05e5",
x"05eb",
x"05f2",
x"05f9",
x"05ff",
x"0606",
x"060c",
x"0613",
x"0619",
x"0620",
x"0627",
x"062d",
x"0634",
x"063a",
x"0641",
x"0648",
x"064e",
x"0655",
x"065f",
x"0665",
x"066c",
x"0672",
x"0679",
x"0680",
x"0689",
x"0690",
x"0697",
x"069d",
x"06a7",
x"06ae",
x"06b4",
x"06be",
x"06c5",
x"06cb",
x"06d5",
x"06dc",
x"06e6",
x"06ec",
x"06f6",
x"06fd",
x"0707",
x"070d",
x"0717",
x"071e",
x"0728",
x"072e",
x"0738",
x"0742",
x"0749",
x"0752",
x"075c",
x"0763",
x"076d",
x"0777",
x"0781",
x"078a",
x"0794",
x"079b",
x"07a5",
x"07af",
x"07b9",
x"07c2",
x"07cc",
x"07d6",
x"07e0",
x"07ea",
x"07f7",
x"0801",
x"080b",
x"0815",
x"081f",
x"082c",
x"0836",
x"0840",
x"084d",
x"0857",
x"0864",
x"086e",
x"0878",
x"0885",
x"0892",
x"089c",
x"08a9",
x"08b3",
x"08c0",
x"08cd",
x"08da",
x"08e4",
x"08f1",
x"08ff",
x"090c",
x"0919",
x"0926",
x"0933",
x"0941",
x"094e",
x"095b",
x"0968",
x"0975",
x"0986",
x"0993",
x"09a0",
x"09b1",
x"09be",
x"09cb",
x"09db",
x"09e9",
x"09f9",
x"0a09",
x"0a17",
x"0a27",
x"0a34",
x"0a45",
x"0a55",
x"0a66",
x"0a76",
x"0a83",
x"0a94",
x"0aa4",
x"0ab5",
x"0ac5",
x"0ad6",
x"0ae6",
x"0af7",
x"0b07",
x"0b18",
x"0b2b",
x"0b3c",
x"0b4c",
x"0b5d",
x"0b71",
x"0b81",
x"0b91",
x"0ba5",
x"0bb6",
x"0bc6",
x"0bda",
x"0bea",
x"0bfe",
x"0c12",
x"0c22",
x"0c36",
x"0c47",
x"0c5a",
x"0c6e",
x"0c7f",
x"0c92",
x"0ca6",
x"0cba",
x"0cce",
x"0ce1",
x"0cf2",
x"0d06",
x"0d19",
x"0d2d",
x"0d41",
x"0d55",
x"0d69",
x"0d7c",
x"0d93",
x"0da7",
x"0dbb",
x"0dcf",
x"0de2",
x"0df9",
x"0e0d",
x"0e21",
x"0e38",
x"0e4c",
x"0e60",
x"0e77",
x"0e8a",
x"0ea2",
x"0eb5",
x"0ecc",
x"0ee0",
x"0ef7",
x"0f0b",
x"0f22",
x"0f39",
x"0f4d",
x"0f64",
x"0f7b",
x"0f8f",
x"0fa6",
x"0fbd",
x"0fd4",
x"0feb",
x"0fff",
x"1016",
x"102d",
x"1044",
x"105b",
x"1072",
x"1089",
x"10a0",
x"10b7",
x"10ce",
x"10e5",
x"1100",
x"1117",
x"112e",
x"1145",
x"115c",
x"1176",
x"118d",
x"11a4",
x"11bb",
x"11d6",
x"11ed",
x"1204",
x"121e",
x"1235",
x"1250",
x"1267",
x"1281",
x"1298",
x"12b2",
x"12ca",
x"12e4",
x"12fb",
x"1315",
x"1330",
x"1347",
x"1361",
x"137b",
x"1392",
x"13ad",
x"13c7",
x"13e2",
x"13f9",
x"1413",
x"142d",
x"1448",
x"1462",
x"147c",
x"1497",
x"14ae",
x"14cb",
x"14e6",
x"1500",
x"151e",
x"1538",
x"1556",
x"1573",
x"1591",
x"15af",
x"15d0",
x"15ed",
x"160b",
x"162c",
x"164d",
x"166e",
x"168f",
x"16b0",
x"16d1",
x"16f2",
x"1712",
x"1737",
x"1758",
x"177c",
x"17a0",
x"17c1",
x"17e5",
x"180a",
x"182e",
x"1852",
x"187a",
x"189e",
x"18c2",
x"18ea",
x"190e",
x"1935",
x"195a",
x"1981",
x"19a9",
x"19cd",
x"19f4",
x"1a1c",
x"1a43",
x"1a6b",
x"1a93",
x"1aba",
x"1ae2",
x"1b09",
x"1b34",
x"1b5b",
x"1b83",
x"1bab",
x"1bd5",
x"1bfd",
x"1c24",
x"1c4f",
x"1c77",
x"1ca2",
x"1cc9",
x"1cf4",
x"1d1b",
x"1d46",
x"1d6e",
x"1d99",
x"1dc0",
x"1deb",
x"1e13",
x"1e3d",
x"1e68",
x"1e90",
x"1ebb",
x"1ee5",
x"1f10",
x"1f3b",
x"1f66",
x"1f91",
x"1fbb",
x"1fe6",
x"2011",
x"203f",
x"206a",
x"2095",
x"20c3",
x"20ee",
x"211c",
x"2147",
x"2175",
x"21a3",
x"21ce",
x"21fc",
x"222a",
x"2258",
x"2286",
x"22b1",
x"22df",
x"2311",
x"233f",
x"236d",
x"239b",
x"23c9",
x"23f7",
x"2429",
x"2457",
x"2488",
x"24b6",
x"24e8",
x"2516",
x"2547",
x"2575",
x"25a7",
x"25d8",
x"260a",
x"263b",
x"266c",
x"269e",
x"26cf",
x"2701",
x"2732",
x"2764",
x"2795",
x"27c6",
x"27fb",
x"282c",
x"285e",
x"2893",
x"28c4",
x"28f9",
x"292d",
x"295f",
x"2994",
x"29c8",
x"29fa",
x"2a2e",
x"2a63",
x"2a98",
x"2acd",
x"2b01",
x"2b36",
x"2b6b",
x"2ba3",
x"2bd7",
x"2c0c",
x"2c41",
x"2c79",
x"2cad",
x"2ce5",
x"2d1a",
x"2d52",
x"2d87",
x"2dbf",
x"2df7",
x"2e2f",
x"2e64",
x"2e9c",
x"2ed4",
x"2f0c",
x"2f44",
x"2f7c",
x"2fb4",
x"2fef",
x"3027",
x"305f",
x"3097",
x"30d2",
x"310a",
x"3145",
x"317d",
x"31b9",
x"31f1",
x"322c",
x"3267",
x"329f",
x"32db",
x"3316",
x"3351",
x"338d",
x"33c8",
x"3403",
x"343e",
x"347a",
x"34b5",
x"34f0",
x"352f",
x"356a",
x"35a6",
x"35e4",
x"361f",
x"365e",
x"3699",
x"36d8",
x"3716",
x"3755",
x"3790",
x"37d2",
x"3811",
x"3853",
x"3895",
x"38d6",
x"391c",
x"3961",
x"39a6",
x"39eb",
x"3a34",
x"3a79",
x"3ac1",
x"3b0a",
x"3b56",
x"3b9e",
x"3be6",
x"3c32",
x"3c7e",
x"3cc7",
x"3d12",
x"3d5e",
x"3daa",
x"3df6",
x"3e41",
x"3e8d",
x"3ed9",
x"3f25",
x"3f74",
x"3fbf",
x"400b",
x"4057",
x"409f",
x"40eb",
x"4137",
x"4186",
x"41d2",
x"4221",
x"4270",
x"42bf",
x"4311",
x"4364",
x"43b6",
x"440f",
x"4465",
x"44c1",
x"451d",
x"457d",
x"45df",
x"4650",
x"46c6",
x"4747",
x"47c7",
x"484e",
x"48d2",
x"4959",
x"49dd",
x"4a67",
x"4af1",
x"4b7f",
x"4c10",
x"4ca1",
x"4d35",
x"3b31",
x"3b87",
x"3bdd",
x"3c36",
x"3c88",
x"3cda",
x"3d2d",
x"3d78",
x"3dc4",
x"3e09",
x"3e52",
x"3e97",
x"3edc",
x"3f21",
x"3f67",
x"3fac",
x"3ff1",
x"4033",
x"4078",
x"40ba",
x"40ff",
x"4141",
x"4186",
x"41c8",
x"420d",
x"424f",
x"4294",
x"42d6",
x"431b",
x"4360",
x"43a6",
x"43eb",
x"4433",
x"4478",
x"44c1",
x"4506",
x"454f",
x"4597",
x"45df",
x"462b",
x"4674",
x"46bc",
x"4705",
x"4750",
x"4799",
x"47e5",
x"482d",
x"4879",
x"48c1",
x"490a",
x"4956",
x"499e",
x"49e7",
x"4a2f",
x"4a78",
x"4ac0",
x"4b08",
x"4b51",
x"4b96",
x"4bdb",
x"4c24",
x"4c69",
x"4cab",
x"4cf0",
x"4d35",
x"4d77",
x"4db9",
x"4dfb",
x"4e39",
x"4e7b",
x"4eba",
x"4ef8",
x"4f3a",
x"4f79",
x"4fb4",
x"4ff3",
x"5031",
x"506d",
x"50ab",
x"50e7",
x"5125",
x"5161",
x"519c",
x"51da",
x"5216",
x"5251",
x"528c",
x"52cb",
x"5306",
x"5341",
x"537d",
x"53bb",
x"53f7",
x"5435",
x"5471",
x"54af",
x"54ee",
x"5529",
x"5568",
x"55a6",
x"55e5",
x"5623",
x"5662",
x"569d",
x"56dc",
x"571a",
x"5759",
x"5798",
x"57d6",
x"5815",
x"5853",
x"5892",
x"58d1",
x"590f",
x"594e",
x"598c",
x"59c8",
x"5a06",
x"5a45",
x"5a83",
x"5abf",
x"5afd",
x"5b39",
x"5b77",
x"5bb2",
x"5bf1",
x"5c2c",
x"5c68",
x"5ca6",
x"5ce2",
x"5d1d",
x"5d58",
x"5d93",
x"5dcf",
x"5e0a",
x"5e45",
x"5e81",
x"5ebc",
x"5ef7",
x"5f32",
x"5f6e",
x"5fa9",
x"5fe4",
x"6020",
x"605b",
x"6093",
x"60ce",
x"610a",
x"6145",
x"6180",
x"61bb",
x"61f7",
x"622f",
x"626a",
x"62a5",
x"62e1",
x"631c",
x"6354",
x"638f",
x"63cb",
x"6406",
x"643e",
x"6479",
x"64b4",
x"64f0",
x"6528",
x"6563",
x"659e",
x"65d6",
x"6612",
x"664d",
x"6688",
x"66c0",
x"66fb",
x"6737",
x"676f",
x"67aa",
x"67e5",
x"6821",
x"6859",
x"6894",
x"68cf",
x"6907",
x"6943",
x"697e",
x"69b6",
x"69f1",
x"6a2c",
x"6a68",
x"6aa0",
x"6adb",
x"6b16",
x"6b52",
x"6b8a",
x"6bc5",
x"6c00",
x"6c38",
x"6c74",
x"6caf",
x"6cea",
x"6d25",
x"6d5d",
x"6d99",
x"6dd4",
x"6e0f",
x"6e4b",
x"6e83",
x"6ebe",
x"6ef9",
x"6f34",
x"6f70",
x"6fab",
x"6fe6",
x"7022",
x"705a",
x"7095",
x"70d0",
x"710c",
x"7147",
x"7182",
x"71bd",
x"71f9",
x"7234",
x"726f",
x"72ab",
x"72e6",
x"7324",
x"7360",
x"739b",
x"73d6",
x"7412",
x"744d",
x"7488",
x"74c7",
x"7502",
x"753d",
x"7579",
x"75b7",
x"75f3",
x"762e",
x"766d",
x"76a8",
x"76e3",
x"7722",
x"775d",
x"779c",
x"77d7",
x"7815",
x"7851",
x"788f",
x"78cb",
x"7909",
x"7948",
x"7983",
x"79c2",
x"7a00",
x"7a3f",
x"7a7a",
x"7ab9",
x"7af7",
x"7b36",
x"7b75",
x"7bb0",
x"7bee",
x"7c2d",
x"7c6c",
x"7caa",
x"7ce9",
x"7d27",
x"7d66",
x"7da5",
x"7de3",
x"7e22",
x"7e64",
x"7ea2",
x"7ee1",
x"7f1f",
x"7f5e",
x"7f9d",
x"7fde",
x"801d",
x"805c",
x"809a",
x"80dc",
x"811b",
x"8159",
x"819b",
x"81da",
x"8218",
x"825a",
x"8299",
x"82db",
x"8319",
x"835b",
x"839a",
x"83d8",
x"841a",
x"8459",
x"849b",
x"84dd",
x"851b",
x"855d",
x"859c",
x"85de",
x"861c",
x"865e",
x"86a0",
x"86de",
x"8720",
x"875f",
x"87a1",
x"87e3",
x"8821",
x"8863",
x"88a5",
x"88e4",
x"8926",
x"8967",
x"89a9",
x"89e8",
x"8a2a",
x"8a6c",
x"8aaa",
x"8aec",
x"8b2e",
x"8b70",
x"8baf",
x"8bf0",
x"8c32",
x"8c74",
x"8cb6",
x"8cf5",
x"8d37",
x"8d78",
x"8dba",
x"8df9",
x"8e3b",
x"8e7d",
x"8ebf",
x"8f00",
x"8f3f",
x"8f81",
x"8fc3",
x"9005",
x"9047",
x"9085",
x"90c7",
x"9109",
x"914b",
x"9189",
x"91cb",
x"920d",
x"924f",
x"9291",
x"92d0",
x"9311",
x"9353",
x"9395",
x"93d4",
x"9416",
x"9458",
x"9499",
x"94d8",
x"951a",
x"955c",
x"959e",
x"95dc",
x"961e",
x"9660",
x"969f",
x"96e0",
x"9722",
x"9761",
x"97a3",
x"97e5",
x"9823",
x"9865",
x"98a4",
x"98e6",
x"9928",
x"9966",
x"99a8",
x"99e7",
x"9a28",
x"9a6a",
x"9aa9",
x"9aeb",
x"9b29",
x"9b6b",
x"9bad",
x"9bef",
x"9c31",
x"9c73",
x"9cb5",
x"9cf7",
x"9d39",
x"9d7a",
x"9dbc",
x"9dfe",
x"9e43",
x"9e85",
x"9ec7",
x"9f0c",
x"9f4e",
x"9f90",
x"9fd5",
x"a017",
x"a05c",
x"a0a1",
x"a0e3",
x"a129",
x"a16a",
x"a1b0",
x"a1f5",
x"a237",
x"a27c",
x"a2c1",
x"a306",
x"a348",
x"a38d",
x"a3d2",
x"a418",
x"a45d",
x"a49f",
x"a4e4",
x"a529",
x"a56e",
x"a5b3",
x"a5f9",
x"a63a",
x"a680",
x"a6c5",
x"a70a",
x"a74f",
x"a794",
x"a7d6",
x"a81b",
x"a861",
x"a8a6",
x"a8e8",
x"a92d",
x"a972",
x"a9b4",
x"a9f9",
x"aa3e",
x"aa80",
x"aac5",
x"ab07",
x"ab4c",
x"ab8e",
x"abd3",
x"ac15",
x"ac5a",
x"ac9c",
x"acde",
x"ad23",
x"ad65",
x"ada7",
x"ade9",
x"ae2b",
x"ae6d",
x"aeaf",
x"aef1",
x"af33",
x"af74",
x"afb6",
x"aff8",
x"b03a",
x"b079",
x"b0bb",
x"b0f9",
x"b13b",
x"b17a",
x"b1b8",
x"b1fa",
x"b239",
x"b277",
x"b2b6",
x"b2f4",
x"b333",
x"b372",
x"b3b0",
x"b3eb",
x"b42a",
x"b465",
x"b4a4",
x"b4df",
x"b51b",
x"b559",
x"b594",
x"b5d0",
x"b60b",
x"b643",
x"b67e",
x"b6ba",
x"b6f2",
x"b72d",
x"b765",
x"b79d",
x"b7d8",
x"b810",
x"b848",
x"b87d",
x"b8b5",
x"b8ed",
x"b922",
x"b95a",
x"b98e",
x"b9c3",
x"b9f8",
x"ba2c",
x"ba61",
x"ba96",
x"bac7",
x"bafc",
x"bb2d",
x"bb5f",
x"bb90",
x"bbc5",
x"bbf6",
x"bc24",
x"bc56",
x"bc87",
x"bcb9",
x"bce7",
x"bd18",
x"bd46",
x"bd74",
x"bda6",
x"bdd4",
x"be02",
x"be30",
x"be5e",
x"be89",
x"beb7",
x"bee5",
x"bf10",
x"bf3e",
x"bf69",
x"bf97",
x"bfc2",
x"bfed",
x"c018",
x"c043",
x"c06d",
x"c098",
x"c0c3",
x"c0ee",
x"c115",
x"c140",
x"c16b",
x"c193",
x"c1bd",
x"c1e5",
x"c20d",
x"c234",
x"c25f",
x"c286",
x"c2ae",
x"c2d5",
x"c2fd",
x"c325",
x"c34c",
x"c370",
x"c398",
x"c3bf",
x"c3e4",
x"c40b",
x"c42f",
x"c457",
x"c47b",
x"c4a3",
x"c4c7",
x"c4eb",
x"c513",
x"c537",
x"c55b",
x"c57f",
x"c5a4",
x"c5c8",
x"c5ec",
x"c610",
x"c635",
x"c659",
x"c67d",
x"c6a1",
x"c6c2",
x"c6e6",
x"c70b",
x"c72c",
x"c750",
x"c774",
x"c795",
x"c7b9",
x"c7da",
x"c7fe",
x"c81f",
x"c844",
x"c865",
x"c885",
x"c8aa",
x"c8cb",
x"c8ef",
x"c910",
x"c931",
x"c952",
x"c976",
x"c997",
x"c9b8",
x"c9d9",
x"c9fa",
x"ca1e",
x"ca3f",
x"ca60",
x"ca81",
x"caa2",
x"cac3",
x"cae4",
x"cb05",
x"cb29",
x"cb4a",
x"cb6b",
x"cb8c",
x"cbad",
x"cbce",
x"cbee",
x"cc0f",
x"cc30",
x"cc51",
x"cc72",
x"cc93",
x"ccb4",
x"ccd8",
x"ccf9",
x"cd1a",
x"cd3b",
x"cd5c",
x"cd7d",
x"cd9e",
x"cdbf",
x"cde3",
x"ce04",
x"ce25",
x"ce46",
x"ce67",
x"ce88",
x"cea9",
x"ceca",
x"ceeb",
x"cf0c",
x"cf2d",
x"cf4e",
x"cf6e",
x"cf8f",
x"cfb0",
x"cfd1",
x"cff2",
x"d010",
x"d031",
x"d052",
x"d073",
x"d094",
x"d0b1",
x"d0d2",
x"d0f3",
x"d111",
x"d132",
x"d153",
x"d170",
x"d191",
x"d1af",
x"d1d0",
x"d1ee",
x"d20e",
x"d22c",
x"d24d",
x"d26b",
x"d28c",
x"d2a9",
x"d2c7",
x"d2e8",
x"d306",
x"d323",
x"d341",
x"d362",
x"d37f",
x"d39d",
x"d3bb",
x"d3d8",
x"d3f6",
x"d414",
x"d431",
x"d452",
x"d470",
x"d48a",
x"d4a8",
x"d4c6",
x"d4e3",
x"d501",
x"d51f",
x"d53c",
x"d55a",
x"d574",
x"d592",
x"d5af",
x"d5ca",
x"d5e7",
x"d605",
x"d61f",
x"d63d",
x"d657",
x"d675",
x"d68f",
x"d6ad",
x"d6c7",
x"d6e5",
x"d6ff",
x"d71a",
x"d737",
x"d752",
x"d76c",
x"d787",
x"d7a4",
x"d7bf",
x"d7d9",
x"d7f3",
x"d80e",
x"d828",
x"d842",
x"d85d",
x"d877",
x"d891",
x"d8ac",
x"d8c6",
x"d8dd",
x"d8f7",
x"d912",
x"d92c",
x"d943",
x"d95e",
x"d978",
x"d98f",
x"d9a9",
x"d9c0",
x"d9db",
x"d9f2",
x"da0c",
x"da23",
x"da3e",
x"da55",
x"da6c",
x"da83",
x"da9d",
x"dab4",
x"dacb",
x"dae2",
x"daf9",
x"db10",
x"db27",
x"db3f",
x"db56",
x"db6d",
x"db84",
x"db9b",
x"dbb2",
x"dbc6",
x"dbdd",
x"dbf4",
x"dc0b",
x"dc1f",
x"dc36",
x"dc49",
x"dc60",
x"dc74",
x"dc8b",
x"dc9f",
x"dcb3",
x"dcca",
x"dcde",
x"dcf1",
x"dd05",
x"dd19",
x"dd2d",
x"dd40",
x"dd54",
x"dd68",
x"dd7c",
x"dd90",
x"dda3",
x"ddb7",
x"ddcb",
x"dddb",
x"ddef",
x"de03",
x"de13",
x"de27",
x"de3b",
x"de4b",
x"de5f",
x"de70",
x"de83",
x"de94",
x"dea4",
x"deb8",
x"dec8",
x"ded9",
x"deed",
x"defd",
x"df0e",
x"df1e",
x"df2f",
x"df3f",
x"df50",
x"df60",
x"df70",
x"df81",
x"df91",
x"dfa2",
x"dfb2",
x"dfc3",
x"dfd3",
x"dfe0",
x"dff1",
x"e001",
x"e012",
x"e01f",
x"e030",
x"e040",
x"e04d",
x"e05e",
x"e06b",
x"e07b",
x"e088",
x"e099",
x"e0a6",
x"e0b7",
x"e0c4",
x"e0d1",
x"e0e1",
x"e0ef",
x"e0fc",
x"e10c",
x"e119",
x"e127",
x"e134",
x"e144",
x"e151",
x"e15f",
x"e16c",
x"e179",
x"e186",
x"e197",
x"e1a4",
x"e1b1",
x"e1be",
x"e1cb",
x"e1d8",
x"e1e6",
x"e1f3",
x"e200",
x"e20d",
x"e217",
x"e224",
x"e231",
x"e23f",
x"e24c",
x"e259",
x"e266",
x"e270",
x"e27d",
x"e28a",
x"e298",
x"e2a1",
x"e2af",
x"e2bc",
x"e2c9",
x"e2d3",
x"e2e0",
x"e2ed",
x"e2f7",
x"e304",
x"e311",
x"e31b",
x"e328",
x"e336",
x"e340",
x"e34d",
x"e357",
x"e364",
x"e371",
x"e37b",
x"e388",
x"e392",
x"e39f",
x"e3a9",
x"e3b6",
x"e3c3",
x"e3cd",
x"e3da",
x"e3e4",
x"e3ee",
x"e3fb",
x"e405",
x"e412",
x"e41c",
x"e426",
x"e430",
x"e43d",
x"e447",
x"e451",
x"e45b",
x"e465",
x"e472",
x"e47c",
x"e486",
x"e490",
x"e499",
x"e4a3",
x"e4ad",
x"e4b7",
x"e4c1",
x"e4cb",
x"e4d5",
x"e4db",
x"e4e5",
x"e4ef",
x"e4f9",
x"e503",
x"e50d",
x"e513",
x"e51d",
x"e527",
x"e52e",
x"e538",
x"e541",
x"e548",
x"e552",
x"e55c",
x"e562",
x"e56c",
x"e573",
x"e57d",
x"e583",
x"e58d",
x"e594",
x"e59e",
x"e5a4",
x"e5ab",
x"e5b5",
x"e5bb",
x"e5c5",
x"e5cc",
x"e5d2",
x"e5dc",
x"e5e3",
x"e5e9",
x"e5f0",
x"e5fa",
x"e601",
x"e607",
x"e60e",
x"e618",
x"e61e",
x"e625",
x"e62b",
x"e632",
x"e639",
x"e642",
x"e649",
x"e650",
x"e656",
x"e65d",
x"e663",
x"e66a",
x"e671",
x"e677",
x"e67e",
x"e684",
x"e68b",
x"e691",
x"e698",
x"e69f",
x"e6a5",
x"e6ac",
x"e6b2",
x"e6b9",
x"e6c0",
x"e6c6",
x"e6cd",
x"e6d3",
x"e6da",
x"e6dd",
x"e6e4",
x"e6ea",
x"e6f1",
x"e6f8",
x"e6fe",
x"e705",
x"e708",
x"e70f",
x"e715",
x"e71c",
x"e722",
x"e729",
x"e72c",
x"e733",
x"e739",
x"e740",
x"e747",
x"e74d",
x"e751",
x"e757",
x"e75e",
x"e764",
x"e768",
x"e76e",
x"e775",
x"e77b",
x"e782",
x"e785",
x"e78c",
x"e792",
x"e799",
x"e7a0");

begin

process(clk)
begin
if rising_edge(clk) then
  val <= coef(addr);
end if;
end process;

end beh;
