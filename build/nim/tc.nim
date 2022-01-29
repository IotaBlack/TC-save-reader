import kaitai_struct_nim_runtime
import options

type
  Tc* = ref object of KaitaiStruct
    `magic`*: seq[byte]
    `saveVersion`*: int64
    `nand`*: uint32
    `delay`*: uint32
    `customVisible`*: uint8
    `clockSpeed`*: uint32
    `nestingLevel`*: uint8
    `dependcyCount`*: uint64
    `dependecies`*: seq[uint64]
    `description`*: Tc_String
    `unpacked`*: uint8
    `cameraPosition`*: Tc_Point
    `cachedDesign`*: uint8
    `componentCount`*: uint64
    `components`*: seq[Tc_Component]
    `circuitCount`*: uint64
    `circuits`*: seq[Tc_Circuit]
    `parent`*: KaitaiStruct
  Tc_CircuitKind* = enum
    ck_bit = 0
    ck_byte = 1
    ck_qword = 2
  Tc_ComponentKind* = enum
    error = 0
    false = 1
    true = 2
    buffer = 3
    not = 4
    and = 5
    and3 = 6
    nand = 7
    or = 8
    or3 = 9
    nor = 10
    xor = 11
    xnor = 12
    bytecounter = 13
    virtualbytecounter = 14
    qwordcounter = 15
    virtualqwordcounter = 16
    ram = 17
    virtualram = 18
    qwordram = 19
    virtualqwordram = 20
    stack = 21
    virtualstack = 22
    register = 23
    virtualregister = 24
    registerred = 25
    virtualregisterred = 26
    registerredplus = 27
    virtualregisterredplus = 28
    qwordregister = 29
    virtualqwordregister = 30
    byteswitch = 31
    bytemux = 32
    decoder1 = 33
    decoder3 = 34
    byteconstant = 35
    bytenot = 36
    byteor = 37
    byteand = 38
    bytexor = 39
    byteequal = 40
    bytelessu = 41
    bytelessi = 42
    byteneg = 43
    byteadd = 44
    bytemul = 45
    bytesplitter = 46
    bytemaker = 47
    qwordsplitter = 48
    qwordmaker = 49
    fulladder = 50
    bitmemory = 51
    virtualbitmemory = 52
    srlatch = 53
    random = 54
    clock = 55
    waveformgenerator = 56
    httpclient = 57
    asciiscreen = 58
    keypad = 59
    filerom = 60
    halt = 61
    circuitcluster = 62
    screen = 63
    program1 = 64
    program1red = 65
    program2 = 66
    program3 = 67
    program4 = 68
    levelgate = 69
    input1 = 70
    input2 = 71
    input3 = 72
    input4 = 73
    input1bconditions = 74
    input1b = 75
    inputqword = 76
    input1bcode = 77
    input1_1b = 78
    output1 = 79
    output1sum = 80
    output1car = 81
    output1aval = 82
    output1bval = 83
    output2 = 84
    output3 = 85
    output4 = 86
    output1b = 87
    outputqword = 88
    output1_1b = 89
    outputcounter = 90
    inputoutput = 91
    custom = 92
    virtualcustom = 93
    qwordprogram = 94
    delaybuffer = 95
    virtualdelaybuffer = 96
    console = 97
    byteshl = 98
    byteshr = 99
    qwordconstant = 100
    qwordnot = 101
    qwordor = 102
    qwordand = 103
    qwordxor = 104
    qwordneg = 105
    qwordadd = 106
    qwordmul = 107
    qwordequal = 108
    qwordlessu = 109
    qwordlessi = 110
    qwordshl = 111
    qwordshr = 112
    qwordmux = 113
    qwordswitch = 114
    statebit = 115
    statebyte = 116
  Tc_Point* = ref object of KaitaiStruct
    `x`*: int16
    `y`*: int16
    `parent`*: KaitaiStruct
  Tc_String* = ref object of KaitaiStruct
    `len`*: uint64
    `content`*: string
    `parent`*: KaitaiStruct
  Tc_CircuitPath* = ref object of KaitaiStruct
    `start`*: Tc_Point
    `body`*: seq[Tc_CircuitSegment]
    `parent`*: Tc_Circuit
  Tc_CircuitSegment* = ref object of KaitaiStruct
    `direction`*: uint64
    `length`*: uint64
    `parent`*: Tc_CircuitPath
  Tc_Circuit* = ref object of KaitaiStruct
    `permanentId`*: uint64
    `kind`*: Tc_CircuitKind
    `color`*: uint8
    `comment`*: Tc_String
    `path`*: Tc_CircuitPath
    `parent`*: Tc
  Tc_Component* = ref object of KaitaiStruct
    `kind`*: Tc_ComponentKind
    `position`*: Tc_Point
    `rotation`*: uint8
    `permanentId`*: uint64
    `customString`*: Tc_String
    `programName`*: Tc_String
    `customId`*: uint64
    `parent`*: Tc

proc read*(_: typedesc[Tc], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Tc
proc read*(_: typedesc[Tc_Point], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Tc_Point
proc read*(_: typedesc[Tc_String], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Tc_String
proc read*(_: typedesc[Tc_CircuitPath], io: KaitaiStream, root: KaitaiStruct, parent: Tc_Circuit): Tc_CircuitPath
proc read*(_: typedesc[Tc_CircuitSegment], io: KaitaiStream, root: KaitaiStruct, parent: Tc_CircuitPath): Tc_CircuitSegment
proc read*(_: typedesc[Tc_Circuit], io: KaitaiStream, root: KaitaiStruct, parent: Tc): Tc_Circuit
proc read*(_: typedesc[Tc_Component], io: KaitaiStream, root: KaitaiStruct, parent: Tc): Tc_Component


proc read*(_: typedesc[Tc], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Tc =
  template this: untyped = result
  this = new(Tc)
  let root = if root == nil: cast[Tc](this) else: cast[Tc](root)
  this.io = io
  this.root = root
  this.parent = parent

  let magicExpr = this.io.readBytes(int(1))
  this.magic = magicExpr
  let saveVersionExpr = this.io.readS8le()
  this.saveVersion = saveVersionExpr
  let nandExpr = this.io.readU4le()
  this.nand = nandExpr
  let delayExpr = this.io.readU4le()
  this.delay = delayExpr
  let customVisibleExpr = this.io.readU1()
  this.customVisible = customVisibleExpr
  let clockSpeedExpr = this.io.readU4le()
  this.clockSpeed = clockSpeedExpr
  let nestingLevelExpr = this.io.readU1()
  this.nestingLevel = nestingLevelExpr
  let dependcyCountExpr = this.io.readU8le()
  this.dependcyCount = dependcyCountExpr
  for i in 0 ..< int(this.dependcyCount):
    let it = this.io.readU8le()
    this.dependecies.add(it)
  let descriptionExpr = Tc_String.read(this.io, this.root, this)
  this.description = descriptionExpr
  let unpackedExpr = this.io.readU1()
  this.unpacked = unpackedExpr
  let cameraPositionExpr = Tc_Point.read(this.io, this.root, this)
  this.cameraPosition = cameraPositionExpr
  let cachedDesignExpr = this.io.readU1()
  this.cachedDesign = cachedDesignExpr
  let componentCountExpr = this.io.readU8le()
  this.componentCount = componentCountExpr
  for i in 0 ..< int(this.componentCount):
    let it = Tc_Component.read(this.io, this.root, this)
    this.components.add(it)
  let circuitCountExpr = this.io.readU8le()
  this.circuitCount = circuitCountExpr
  for i in 0 ..< int(this.circuitCount):
    let it = Tc_Circuit.read(this.io, this.root, this)
    this.circuits.add(it)

proc fromFile*(_: typedesc[Tc], filename: string): Tc =
  Tc.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Tc_Point], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Tc_Point =
  template this: untyped = result
  this = new(Tc_Point)
  let root = if root == nil: cast[Tc](this) else: cast[Tc](root)
  this.io = io
  this.root = root
  this.parent = parent

  let xExpr = this.io.readS2le()
  this.x = xExpr
  let yExpr = this.io.readS2le()
  this.y = yExpr

proc fromFile*(_: typedesc[Tc_Point], filename: string): Tc_Point =
  Tc_Point.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Tc_String], io: KaitaiStream, root: KaitaiStruct, parent: KaitaiStruct): Tc_String =
  template this: untyped = result
  this = new(Tc_String)
  let root = if root == nil: cast[Tc](this) else: cast[Tc](root)
  this.io = io
  this.root = root
  this.parent = parent

  let lenExpr = this.io.readU8le()
  this.len = lenExpr
  let contentExpr = encode(this.io.readBytes(int(this.len)), "utf8")
  this.content = contentExpr

proc fromFile*(_: typedesc[Tc_String], filename: string): Tc_String =
  Tc_String.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Tc_CircuitPath], io: KaitaiStream, root: KaitaiStruct, parent: Tc_Circuit): Tc_CircuitPath =
  template this: untyped = result
  this = new(Tc_CircuitPath)
  let root = if root == nil: cast[Tc](this) else: cast[Tc](root)
  this.io = io
  this.root = root
  this.parent = parent

  let startExpr = Tc_Point.read(this.io, this.root, this)
  this.start = startExpr
  block:
    var i: int
    while true:
      let it = Tc_CircuitSegment.read(this.io, this.root, this)
      this.body.add(it)
      if it.length == 0:
        break
      inc i

proc fromFile*(_: typedesc[Tc_CircuitPath], filename: string): Tc_CircuitPath =
  Tc_CircuitPath.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Tc_CircuitSegment], io: KaitaiStream, root: KaitaiStruct, parent: Tc_CircuitPath): Tc_CircuitSegment =
  template this: untyped = result
  this = new(Tc_CircuitSegment)
  let root = if root == nil: cast[Tc](this) else: cast[Tc](root)
  this.io = io
  this.root = root
  this.parent = parent

  let directionExpr = this.io.readBitsIntBe(3)
  this.direction = directionExpr
  let lengthExpr = this.io.readBitsIntBe(5)
  this.length = lengthExpr

proc fromFile*(_: typedesc[Tc_CircuitSegment], filename: string): Tc_CircuitSegment =
  Tc_CircuitSegment.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Tc_Circuit], io: KaitaiStream, root: KaitaiStruct, parent: Tc): Tc_Circuit =
  template this: untyped = result
  this = new(Tc_Circuit)
  let root = if root == nil: cast[Tc](this) else: cast[Tc](root)
  this.io = io
  this.root = root
  this.parent = parent

  let permanentIdExpr = this.io.readU8le()
  this.permanentId = permanentIdExpr
  let kindExpr = Tc_CircuitKind(this.io.readU1())
  this.kind = kindExpr
  let colorExpr = this.io.readU1()
  this.color = colorExpr
  let commentExpr = Tc_String.read(this.io, this.root, this)
  this.comment = commentExpr
  let pathExpr = Tc_CircuitPath.read(this.io, this.root, this)
  this.path = pathExpr

proc fromFile*(_: typedesc[Tc_Circuit], filename: string): Tc_Circuit =
  Tc_Circuit.read(newKaitaiFileStream(filename), nil, nil)

proc read*(_: typedesc[Tc_Component], io: KaitaiStream, root: KaitaiStruct, parent: Tc): Tc_Component =
  template this: untyped = result
  this = new(Tc_Component)
  let root = if root == nil: cast[Tc](this) else: cast[Tc](root)
  this.io = io
  this.root = root
  this.parent = parent

  let kindExpr = Tc_ComponentKind(this.io.readU2le())
  this.kind = kindExpr
  let positionExpr = Tc_Point.read(this.io, this.root, this)
  this.position = positionExpr
  let rotationExpr = this.io.readU1()
  this.rotation = rotationExpr
  let permanentIdExpr = this.io.readU8le()
  this.permanentId = permanentIdExpr
  let customStringExpr = Tc_String.read(this.io, this.root, this)
  this.customString = customStringExpr
  if  (( ((ord(this.kind) > 63) and (ord(this.kind) < 69)) ) or (ord(this.kind) == 94)) :
    let programNameExpr = Tc_String.read(this.io, this.root, this)
    this.programName = programNameExpr
  if ord(this.kind) == 92:
    let customIdExpr = this.io.readU8le()
    this.customId = customIdExpr

proc fromFile*(_: typedesc[Tc_Component], filename: string): Tc_Component =
  Tc_Component.read(newKaitaiFileStream(filename), nil, nil)

