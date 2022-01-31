// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.Tc = factory(root.KaitaiStream);
  }
}(this, function (KaitaiStream) {
var Tc = (function() {
  Tc.CircuitKind = Object.freeze({
    CK_BIT: 0,
    CK_BYTE: 1,
    CK_QWORD: 2,

    0: "CK_BIT",
    1: "CK_BYTE",
    2: "CK_QWORD",
  });

  Tc.ComponentKind = Object.freeze({
    ERROR: 0,
    FALSE: 1,
    TRUE: 2,
    BUFFER: 3,
    NOT: 4,
    AND: 5,
    AND3: 6,
    NAND: 7,
    OR: 8,
    OR3: 9,
    NOR: 10,
    XOR: 11,
    XNOR: 12,
    BYTECOUNTER: 13,
    VIRTUALBYTECOUNTER: 14,
    QWORDCOUNTER: 15,
    VIRTUALQWORDCOUNTER: 16,
    RAM: 17,
    VIRTUALRAM: 18,
    QWORDRAM: 19,
    VIRTUALQWORDRAM: 20,
    STACK: 21,
    VIRTUALSTACK: 22,
    REGISTER: 23,
    VIRTUALREGISTER: 24,
    REGISTERRED: 25,
    VIRTUALREGISTERRED: 26,
    REGISTERREDPLUS: 27,
    VIRTUALREGISTERREDPLUS: 28,
    QWORDREGISTER: 29,
    VIRTUALQWORDREGISTER: 30,
    BYTESWITCH: 31,
    BYTEMUX: 32,
    DECODER1: 33,
    DECODER3: 34,
    BYTECONSTANT: 35,
    BYTENOT: 36,
    BYTEOR: 37,
    BYTEAND: 38,
    BYTEXOR: 39,
    BYTEEQUAL: 40,
    BYTELESSU: 41,
    BYTELESSI: 42,
    BYTENEG: 43,
    BYTEADD: 44,
    BYTEMUL: 45,
    BYTESPLITTER: 46,
    BYTEMAKER: 47,
    QWORDSPLITTER: 48,
    QWORDMAKER: 49,
    FULLADDER: 50,
    BITMEMORY: 51,
    VIRTUALBITMEMORY: 52,
    SRLATCH: 53,
    RANDOM: 54,
    CLOCK: 55,
    WAVEFORMGENERATOR: 56,
    HTTPCLIENT: 57,
    ASCIISCREEN: 58,
    KEYPAD: 59,
    FILEROM: 60,
    HALT: 61,
    CIRCUITCLUSTER: 62,
    SCREEN: 63,
    PROGRAM1: 64,
    PROGRAM1RED: 65,
    PROGRAM2: 66,
    PROGRAM3: 67,
    PROGRAM4: 68,
    LEVELGATE: 69,
    INPUT1: 70,
    INPUT2: 71,
    INPUT3: 72,
    INPUT4: 73,
    INPUT1BCONDITIONS: 74,
    INPUT1B: 75,
    INPUTQWORD: 76,
    INPUT1BCODE: 77,
    INPUT1_1B: 78,
    OUTPUT1: 79,
    OUTPUT1SUM: 80,
    OUTPUT1CAR: 81,
    OUTPUT1AVAL: 82,
    OUTPUT1BVAL: 83,
    OUTPUT2: 84,
    OUTPUT3: 85,
    OUTPUT4: 86,
    OUTPUT1B: 87,
    OUTPUTQWORD: 88,
    OUTPUT1_1B: 89,
    OUTPUTCOUNTER: 90,
    INPUTOUTPUT: 91,
    CUSTOM: 92,
    VIRTUALCUSTOM: 93,
    QWORDPROGRAM: 94,
    DELAYBUFFER: 95,
    VIRTUALDELAYBUFFER: 96,
    CONSOLE: 97,
    BYTESHL: 98,
    BYTESHR: 99,
    QWORDCONSTANT: 100,
    QWORDNOT: 101,
    QWORDOR: 102,
    QWORDAND: 103,
    QWORDXOR: 104,
    QWORDNEG: 105,
    QWORDADD: 106,
    QWORDMUL: 107,
    QWORDEQUAL: 108,
    QWORDLESSU: 109,
    QWORDLESSI: 110,
    QWORDSHL: 111,
    QWORDSHR: 112,
    QWORDMUX: 113,
    QWORDSWITCH: 114,
    STATEBIT: 115,
    STATEBYTE: 116,

    0: "ERROR",
    1: "FALSE",
    2: "TRUE",
    3: "BUFFER",
    4: "NOT",
    5: "AND",
    6: "AND3",
    7: "NAND",
    8: "OR",
    9: "OR3",
    10: "NOR",
    11: "XOR",
    12: "XNOR",
    13: "BYTECOUNTER",
    14: "VIRTUALBYTECOUNTER",
    15: "QWORDCOUNTER",
    16: "VIRTUALQWORDCOUNTER",
    17: "RAM",
    18: "VIRTUALRAM",
    19: "QWORDRAM",
    20: "VIRTUALQWORDRAM",
    21: "STACK",
    22: "VIRTUALSTACK",
    23: "REGISTER",
    24: "VIRTUALREGISTER",
    25: "REGISTERRED",
    26: "VIRTUALREGISTERRED",
    27: "REGISTERREDPLUS",
    28: "VIRTUALREGISTERREDPLUS",
    29: "QWORDREGISTER",
    30: "VIRTUALQWORDREGISTER",
    31: "BYTESWITCH",
    32: "BYTEMUX",
    33: "DECODER1",
    34: "DECODER3",
    35: "BYTECONSTANT",
    36: "BYTENOT",
    37: "BYTEOR",
    38: "BYTEAND",
    39: "BYTEXOR",
    40: "BYTEEQUAL",
    41: "BYTELESSU",
    42: "BYTELESSI",
    43: "BYTENEG",
    44: "BYTEADD",
    45: "BYTEMUL",
    46: "BYTESPLITTER",
    47: "BYTEMAKER",
    48: "QWORDSPLITTER",
    49: "QWORDMAKER",
    50: "FULLADDER",
    51: "BITMEMORY",
    52: "VIRTUALBITMEMORY",
    53: "SRLATCH",
    54: "RANDOM",
    55: "CLOCK",
    56: "WAVEFORMGENERATOR",
    57: "HTTPCLIENT",
    58: "ASCIISCREEN",
    59: "KEYPAD",
    60: "FILEROM",
    61: "HALT",
    62: "CIRCUITCLUSTER",
    63: "SCREEN",
    64: "PROGRAM1",
    65: "PROGRAM1RED",
    66: "PROGRAM2",
    67: "PROGRAM3",
    68: "PROGRAM4",
    69: "LEVELGATE",
    70: "INPUT1",
    71: "INPUT2",
    72: "INPUT3",
    73: "INPUT4",
    74: "INPUT1BCONDITIONS",
    75: "INPUT1B",
    76: "INPUTQWORD",
    77: "INPUT1BCODE",
    78: "INPUT1_1B",
    79: "OUTPUT1",
    80: "OUTPUT1SUM",
    81: "OUTPUT1CAR",
    82: "OUTPUT1AVAL",
    83: "OUTPUT1BVAL",
    84: "OUTPUT2",
    85: "OUTPUT3",
    86: "OUTPUT4",
    87: "OUTPUT1B",
    88: "OUTPUTQWORD",
    89: "OUTPUT1_1B",
    90: "OUTPUTCOUNTER",
    91: "INPUTOUTPUT",
    92: "CUSTOM",
    93: "VIRTUALCUSTOM",
    94: "QWORDPROGRAM",
    95: "DELAYBUFFER",
    96: "VIRTUALDELAYBUFFER",
    97: "CONSOLE",
    98: "BYTESHL",
    99: "BYTESHR",
    100: "QWORDCONSTANT",
    101: "QWORDNOT",
    102: "QWORDOR",
    103: "QWORDAND",
    104: "QWORDXOR",
    105: "QWORDNEG",
    106: "QWORDADD",
    107: "QWORDMUL",
    108: "QWORDEQUAL",
    109: "QWORDLESSU",
    110: "QWORDLESSI",
    111: "QWORDSHL",
    112: "QWORDSHR",
    113: "QWORDMUX",
    114: "QWORDSWITCH",
    115: "STATEBIT",
    116: "STATEBYTE",
  });

  function Tc(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  Tc.prototype._read = function() {
    this.magic = this._io.readBytes(1);
    if (!((KaitaiStream.byteArrayCompare(this.magic, [1]) == 0))) {
      throw new KaitaiStream.ValidationNotEqualError([1], this.magic, this._io, "/seq/0");
    }
    this.saveVersion = this._io.readS8le();
    this.nand = this._io.readU4le();
    this.delay = this._io.readU4le();
    this.customVisible = this._io.readU1();
    this.clockSpeed = this._io.readU4le();
    this.nestingLevel = this._io.readU1();
    this.dependcyCount = this._io.readU8le();
    this.dependecies = new Array(this.dependcyCount);
    for (var i = 0; i < this.dependcyCount; i++) {
      this.dependecies[i] = this._io.readU8le();
    }
    this.description = new String(this._io, this, this._root);
    this.unpacked = this._io.readU1();
    this.cameraPosition = new Point(this._io, this, this._root);
    this.cachedDesign = this._io.readU1();
    this.componentCount = this._io.readU8le();
    this.components = new Array(this.componentCount);
    for (var i = 0; i < this.componentCount; i++) {
      this.components[i] = new Component(this._io, this, this._root);
    }
    this.circuitCount = this._io.readU8le();
    this.circuits = new Array(this.circuitCount);
    for (var i = 0; i < this.circuitCount; i++) {
      this.circuits[i] = new Circuit(this._io, this, this._root);
    }
  }

  var Point = Tc.Point = (function() {
    function Point(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Point.prototype._read = function() {
      this.x = this._io.readS2le();
      this.y = this._io.readS2le();
    }

    return Point;
  })();

  var String = Tc.String = (function() {
    function String(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    String.prototype._read = function() {
      this.len = this._io.readU8le();
      this.content = KaitaiStream.bytesToStr(this._io.readBytes(this.len), "utf8");
    }

    return String;
  })();

  var CircuitPath = Tc.CircuitPath = (function() {
    function CircuitPath(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    CircuitPath.prototype._read = function() {
      this.start = new Point(this._io, this, this._root);
      this.body = []
      var i = 0;
      do {
        var _ = new CircuitSegment(this._io, this, this._root);
        this.body.push(_);
        i++;
      } while (!(_.length == 0));
      if ( ((this.body[this.body.length - 1].direction == 1) && (this.body[this.body.length - 1].length == 0)) ) {
        this.end = new Point(this._io, this, this._root);
      }
    }

    return CircuitPath;
  })();

  var CircuitSegment = Tc.CircuitSegment = (function() {
    function CircuitSegment(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    CircuitSegment.prototype._read = function() {
      this.direction = this._io.readBitsIntBe(3);
      this.length = this._io.readBitsIntBe(5);
    }

    return CircuitSegment;
  })();

  var Circuit = Tc.Circuit = (function() {
    function Circuit(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Circuit.prototype._read = function() {
      this.permanentId = this._io.readU8le();
      this.kind = this._io.readU1();
      this.color = this._io.readU1();
      this.comment = new String(this._io, this, this._root);
      this.path = new CircuitPath(this._io, this, this._root);
    }

    return Circuit;
  })();

  var Component = Tc.Component = (function() {
    function Component(_io, _parent, _root) {
      this._io = _io;
      this._parent = _parent;
      this._root = _root || this;

      this._read();
    }
    Component.prototype._read = function() {
      this.kind = this._io.readU2le();
      this.position = new Point(this._io, this, this._root);
      this.rotation = this._io.readU1();
      this.permanentId = this._io.readU8le();
      this.customString = new String(this._io, this, this._root);
      if ( (( ((this.kind > 63) && (this.kind < 69)) ) || (this.kind == 94)) ) {
        this.programName = new String(this._io, this, this._root);
      }
      if (this.kind == 92) {
        this.customId = this._io.readU8le();
      }
    }

    return Component;
  })();

  return Tc;
})();
return Tc;
}));
