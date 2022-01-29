// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use std::option::Option;
use std::boxed::Box;
use std::io::Result;
use std::io::Cursor;
use std::vec::Vec;
use std::default::Default;
use kaitai_struct::KaitaiStream;
use kaitai_struct::KaitaiStruct;

#[derive(Default)]
pub struct Tc {
    pub magic: Vec<u8>,
    pub saveVersion: i64,
    pub nand: u32,
    pub delay: u32,
    pub customVisible: u8,
    pub clockSpeed: u32,
    pub nestingLevel: u8,
    pub dependcyCount: u64,
    pub dependecies: Vec<u64>,
    pub description: Box<Tc__String>,
    pub unpacked: u8,
    pub cameraPosition: Box<Tc__Point>,
    pub cachedDesign: u8,
    pub componentCount: u64,
    pub components: Vec<Box<Tc__Component>>,
    pub circuitCount: u64,
    pub circuits: Vec<Box<Tc__Circuit>>,
}

impl KaitaiStruct for Tc {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.magic = self.stream.read_bytes(1)?;
        self.saveVersion = self.stream.read_s8le()?;
        self.nand = self.stream.read_u4le()?;
        self.delay = self.stream.read_u4le()?;
        self.customVisible = self.stream.read_u1()?;
        self.clockSpeed = self.stream.read_u4le()?;
        self.nestingLevel = self.stream.read_u1()?;
        self.dependcyCount = self.stream.read_u8le()?;
        self.dependecies = vec!();
        for i in 0..self.dependcy_count {
            self.dependecies.push(self.stream.read_u8le()?);
        }
        self.description = Box::new(Tc__String::new(self.stream, self, _root)?);
        self.unpacked = self.stream.read_u1()?;
        self.cameraPosition = Box::new(Tc__Point::new(self.stream, self, _root)?);
        self.cachedDesign = self.stream.read_u1()?;
        self.componentCount = self.stream.read_u8le()?;
        self.components = vec!();
        for i in 0..self.component_count {
            self.components.push(Box::new(Tc__Component::new(self.stream, self, _root)?));
        }
        self.circuitCount = self.stream.read_u8le()?;
        self.circuits = vec!();
        for i in 0..self.circuit_count {
            self.circuits.push(Box::new(Tc__Circuit::new(self.stream, self, _root)?));
        }
    }
}

impl Tc {
}
enum Tc__CircuitKind {
    CK_BIT,
    CK_BYTE,
    CK_QWORD,
}
enum Tc__ComponentKind {
    ERROR,
    FALSE,
    TRUE,
    BUFFER,
    NOT,
    AND,
    AND3,
    NAND,
    OR,
    OR3,
    NOR,
    XOR,
    XNOR,
    BYTECOUNTER,
    VIRTUALBYTECOUNTER,
    QWORDCOUNTER,
    VIRTUALQWORDCOUNTER,
    RAM,
    VIRTUALRAM,
    QWORDRAM,
    VIRTUALQWORDRAM,
    STACK,
    VIRTUALSTACK,
    REGISTER,
    VIRTUALREGISTER,
    REGISTERRED,
    VIRTUALREGISTERRED,
    REGISTERREDPLUS,
    VIRTUALREGISTERREDPLUS,
    QWORDREGISTER,
    VIRTUALQWORDREGISTER,
    BYTESWITCH,
    BYTEMUX,
    DECODER1,
    DECODER3,
    BYTECONSTANT,
    BYTENOT,
    BYTEOR,
    BYTEAND,
    BYTEXOR,
    BYTEEQUAL,
    BYTELESSU,
    BYTELESSI,
    BYTENEG,
    BYTEADD,
    BYTEMUL,
    BYTESPLITTER,
    BYTEMAKER,
    QWORDSPLITTER,
    QWORDMAKER,
    FULLADDER,
    BITMEMORY,
    VIRTUALBITMEMORY,
    SRLATCH,
    RANDOM,
    CLOCK,
    WAVEFORMGENERATOR,
    HTTPCLIENT,
    ASCIISCREEN,
    KEYPAD,
    FILEROM,
    HALT,
    CIRCUITCLUSTER,
    SCREEN,
    PROGRAM1,
    PROGRAM1RED,
    PROGRAM2,
    PROGRAM3,
    PROGRAM4,
    LEVELGATE,
    INPUT1,
    INPUT2,
    INPUT3,
    INPUT4,
    INPUT1BCONDITIONS,
    INPUT1B,
    INPUTQWORD,
    INPUT1BCODE,
    INPUT1_1B,
    OUTPUT1,
    OUTPUT1SUM,
    OUTPUT1CAR,
    OUTPUT1AVAL,
    OUTPUT1BVAL,
    OUTPUT2,
    OUTPUT3,
    OUTPUT4,
    OUTPUT1B,
    OUTPUTQWORD,
    OUTPUT1_1B,
    OUTPUTCOUNTER,
    INPUTOUTPUT,
    CUSTOM,
    VIRTUALCUSTOM,
    QWORDPROGRAM,
    DELAYBUFFER,
    VIRTUALDELAYBUFFER,
    CONSOLE,
    BYTESHL,
    BYTESHR,
    QWORDCONSTANT,
    QWORDNOT,
    QWORDOR,
    QWORDAND,
    QWORDXOR,
    QWORDNEG,
    QWORDADD,
    QWORDMUL,
    QWORDEQUAL,
    QWORDLESSU,
    QWORDLESSI,
    QWORDSHL,
    QWORDSHR,
    QWORDMUX,
    QWORDSWITCH,
    STATEBIT,
    STATEBYTE,
}
#[derive(Default)]
pub struct Tc__Point {
    pub x: i16,
    pub y: i16,
}

impl KaitaiStruct for Tc__Point {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.x = self.stream.read_s2le()?;
        self.y = self.stream.read_s2le()?;
    }
}

impl Tc__Point {
}
#[derive(Default)]
pub struct Tc__String {
    pub len: u64,
    pub content: String,
}

impl KaitaiStruct for Tc__String {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.len = self.stream.read_u8le()?;
        self.content = panic!("Unimplemented encoding for bytesToStr: {}", "utf8");
    }
}

impl Tc__String {
}
#[derive(Default)]
pub struct Tc__CircuitPath {
    pub start: Box<Tc__Point>,
    pub body: Vec<Box<Tc__CircuitSegment>>,
}

impl KaitaiStruct for Tc__CircuitPath {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.start = Box::new(Tc__Point::new(self.stream, self, _root)?);
        self.body = vec!();
        while {
            let tmpa = Box::new(Tc__CircuitSegment::new(self.stream, self, _root)?);
            self.body.append(Box::new(Tc__CircuitSegment::new(self.stream, self, _root)?));
            !(tmpa.length == 0)
        } { }
    }
}

impl Tc__CircuitPath {
}
#[derive(Default)]
pub struct Tc__CircuitSegment {
    pub direction: u64,
    pub length: u64,
}

impl KaitaiStruct for Tc__CircuitSegment {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.direction = self.stream.read_bits_int(3)?;
        self.length = self.stream.read_bits_int(5)?;
    }
}

impl Tc__CircuitSegment {
}
#[derive(Default)]
pub struct Tc__Circuit {
    pub permanentId: u64,
    pub kind: Box<Tc__CircuitKind>,
    pub color: u8,
    pub comment: Box<Tc__String>,
    pub path: Box<Tc__CircuitPath>,
}

impl KaitaiStruct for Tc__Circuit {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.permanentId = self.stream.read_u8le()?;
        self.kind = self.stream.read_u1()?;
        self.color = self.stream.read_u1()?;
        self.comment = Box::new(Tc__String::new(self.stream, self, _root)?);
        self.path = Box::new(Tc__CircuitPath::new(self.stream, self, _root)?);
    }
}

impl Tc__Circuit {
}
#[derive(Default)]
pub struct Tc__Component {
    pub kind: Box<Tc__ComponentKind>,
    pub position: Box<Tc__Point>,
    pub rotation: u8,
    pub permanentId: u64,
    pub customString: Box<Tc__String>,
    pub programName: Box<Tc__String>,
    pub customId: u64,
}

impl KaitaiStruct for Tc__Component {
    fn new<S: KaitaiStream>(stream: &mut S,
                            _parent: &Option<Box<KaitaiStruct>>,
                            _root: &Option<Box<KaitaiStruct>>)
                            -> Result<Self>
        where Self: Sized {
        let mut s: Self = Default::default();

        s.stream = stream;
        s.read(stream, _parent, _root)?;

        Ok(s)
    }


    fn read<S: KaitaiStream>(&mut self,
                             stream: &mut S,
                             _parent: &Option<Box<KaitaiStruct>>,
                             _root: &Option<Box<KaitaiStruct>>)
                             -> Result<()>
        where Self: Sized {
        self.kind = self.stream.read_u2le()?;
        self.position = Box::new(Tc__Point::new(self.stream, self, _root)?);
        self.rotation = self.stream.read_u1()?;
        self.permanentId = self.stream.read_u8le()?;
        self.customString = Box::new(Tc__String::new(self.stream, self, _root)?);
        if  (( ((self.kind > 63) && (self.kind < 69)) ) || (self.kind == 94))  {
            self.programName = Box::new(Tc__String::new(self.stream, self, _root)?);
        }
        if self.kind == 92 {
            self.customId = self.stream.read_u8le()?;
        }
    }
}

impl Tc__Component {
}
