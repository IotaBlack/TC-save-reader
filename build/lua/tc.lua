-- This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild
--
-- This file is compatible with Lua 5.3

local class = require("class")
require("kaitaistruct")
local enum = require("enum")
local str_decode = require("string_decode")

Tc = class.class(KaitaiStruct)

Tc.CircuitKind = enum.Enum {
  ck_bit = 0,
  ck_byte = 1,
  ck_qword = 2,
}

Tc.ComponentKind = enum.Enum {
  error = 0,
  false = 1,
  true = 2,
  buffer = 3,
  not = 4,
  and = 5,
  and3 = 6,
  nand = 7,
  or = 8,
  or3 = 9,
  nor = 10,
  xor = 11,
  xnor = 12,
  bytecounter = 13,
  virtualbytecounter = 14,
  qwordcounter = 15,
  virtualqwordcounter = 16,
  ram = 17,
  virtualram = 18,
  qwordram = 19,
  virtualqwordram = 20,
  stack = 21,
  virtualstack = 22,
  register = 23,
  virtualregister = 24,
  registerred = 25,
  virtualregisterred = 26,
  registerredplus = 27,
  virtualregisterredplus = 28,
  qwordregister = 29,
  virtualqwordregister = 30,
  byteswitch = 31,
  bytemux = 32,
  decoder1 = 33,
  decoder3 = 34,
  byteconstant = 35,
  bytenot = 36,
  byteor = 37,
  byteand = 38,
  bytexor = 39,
  byteequal = 40,
  bytelessu = 41,
  bytelessi = 42,
  byteneg = 43,
  byteadd = 44,
  bytemul = 45,
  bytesplitter = 46,
  bytemaker = 47,
  qwordsplitter = 48,
  qwordmaker = 49,
  fulladder = 50,
  bitmemory = 51,
  virtualbitmemory = 52,
  srlatch = 53,
  random = 54,
  clock = 55,
  waveformgenerator = 56,
  httpclient = 57,
  asciiscreen = 58,
  keypad = 59,
  filerom = 60,
  halt = 61,
  circuitcluster = 62,
  screen = 63,
  program1 = 64,
  program1red = 65,
  program2 = 66,
  program3 = 67,
  program4 = 68,
  levelgate = 69,
  input1 = 70,
  input2 = 71,
  input3 = 72,
  input4 = 73,
  input1bconditions = 74,
  input1b = 75,
  inputqword = 76,
  input1bcode = 77,
  input1_1b = 78,
  output1 = 79,
  output1sum = 80,
  output1car = 81,
  output1aval = 82,
  output1bval = 83,
  output2 = 84,
  output3 = 85,
  output4 = 86,
  output1b = 87,
  outputqword = 88,
  output1_1b = 89,
  outputcounter = 90,
  inputoutput = 91,
  custom = 92,
  virtualcustom = 93,
  qwordprogram = 94,
  delaybuffer = 95,
  virtualdelaybuffer = 96,
  console = 97,
  byteshl = 98,
  byteshr = 99,
  qwordconstant = 100,
  qwordnot = 101,
  qwordor = 102,
  qwordand = 103,
  qwordxor = 104,
  qwordneg = 105,
  qwordadd = 106,
  qwordmul = 107,
  qwordequal = 108,
  qwordlessu = 109,
  qwordlessi = 110,
  qwordshl = 111,
  qwordshr = 112,
  qwordmux = 113,
  qwordswitch = 114,
  statebit = 115,
  statebyte = 116,
}

function Tc:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Tc:_read()
  self.magic = self._io:read_bytes(1)
  if not(self.magic == "\001") then
    error("not equal, expected " ..  "\001" .. ", but got " .. self.magic)
  end
  self.save_version = self._io:read_s8le()
  self.nand = self._io:read_u4le()
  self.delay = self._io:read_u4le()
  self.custom_visible = self._io:read_u1()
  self.clock_speed = self._io:read_u4le()
  self.nesting_level = self._io:read_u1()
  self.dependcy_count = self._io:read_u8le()
  self.dependecies = {}
  for i = 0, self.dependcy_count - 1 do
    self.dependecies[i + 1] = self._io:read_u8le()
  end
  self.description = Tc.String(self._io, self, self._root)
  self.unpacked = self._io:read_u1()
  self.camera_position = Tc.Point(self._io, self, self._root)
  self.cached_design = self._io:read_u1()
  self.component_count = self._io:read_u8le()
  self.components = {}
  for i = 0, self.component_count - 1 do
    self.components[i + 1] = Tc.Component(self._io, self, self._root)
  end
  self.circuit_count = self._io:read_u8le()
  self.circuits = {}
  for i = 0, self.circuit_count - 1 do
    self.circuits[i + 1] = Tc.Circuit(self._io, self, self._root)
  end
end


Tc.Point = class.class(KaitaiStruct)

function Tc.Point:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Tc.Point:_read()
  self.x = self._io:read_s2le()
  self.y = self._io:read_s2le()
end


Tc.String = class.class(KaitaiStruct)

function Tc.String:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Tc.String:_read()
  self.len = self._io:read_u8le()
  self.content = str_decode.decode(self._io:read_bytes(self.len), "utf8")
end


Tc.CircuitPath = class.class(KaitaiStruct)

function Tc.CircuitPath:_init(io, parent, root)
  KaitaiStruct._init(self, io)
  self._parent = parent
  self._root = root or self
  self:_read()
end

function Tc.CircuitPath:_read()
  self.start = Tc.Point(self._io, self, self._root)
  self.body = {}
  local i = 0
  while true do
    _ = Tc.CircuitSegment(self._io, self, self._root)
    self.body[i + 1] = _
    if _.length == 0 then
      break
    end
    i = i + 1
  end
end


Tc.CircuitSegment = class.class(KaitaiStruct)

function Tc.CircuitSegment:_init(io, parent, root)
KaitaiStruct._init(self, io)
self._parent = parent
self._root = root or self
self:_read()
end

function Tc.CircuitSegment:_read()
self.direction = self._io:read_bits_int_be(3)
self.length = self._io:read_bits_int_be(5)
end


Tc.Circuit = class.class(KaitaiStruct)

function Tc.Circuit:_init(io, parent, root)
KaitaiStruct._init(self, io)
self._parent = parent
self._root = root or self
self:_read()
end

function Tc.Circuit:_read()
self.permanent_id = self._io:read_u8le()
self.kind = Tc.CircuitKind(self._io:read_u1())
self.color = self._io:read_u1()
self.comment = Tc.String(self._io, self, self._root)
self.path = Tc.CircuitPath(self._io, self, self._root)
end


Tc.Component = class.class(KaitaiStruct)

function Tc.Component:_init(io, parent, root)
KaitaiStruct._init(self, io)
self._parent = parent
self._root = root or self
self:_read()
end

function Tc.Component:_read()
self.kind = Tc.ComponentKind(self._io:read_u2le())
self.position = Tc.Point(self._io, self, self._root)
self.rotation = self._io:read_u1()
self.permanent_id = self._io:read_u8le()
self.custom_string = Tc.String(self._io, self, self._root)
if  (( ((self.kind.value > 63) and (self.kind.value < 69)) ) or (self.kind.value == 94))  then
  self.program_name = Tc.String(self._io, self, self._root)
end
if self.kind.value == 92 then
  self.custom_id = self._io:read_u8le()
end
end


