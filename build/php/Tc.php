<?php
// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

namespace {
    class Tc extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Tc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_magic = $this->_io->readBytes(1);
            if (!($this->magic() == "\x00")) {
                throw new \Kaitai\Struct\Error\ValidationNotEqualError("\x00", $this->magic(), $this->_io(), "/seq/0");
            }
            $this->_m_saveVersion = $this->_io->readS8le();
            $this->_m_nand = $this->_io->readU4le();
            $this->_m_delay = $this->_io->readU4le();
            $this->_m_customVisible = $this->_io->readU1();
            $this->_m_clockSpeed = $this->_io->readU4le();
            $this->_m_scaleLevel = $this->_io->readU1();
            $this->_m_dependcyCount = $this->_io->readU8le();
            $this->_m_dependecies = [];
            $n = $this->dependcyCount();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_dependecies[] = $this->_io->readU8le();
            }
            $this->_m_description = new \Tc\String($this->_io, $this, $this->_root);
            $this->_m_componentCount = $this->_io->readU8le();
            $this->_m_components = [];
            $n = $this->componentCount();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_components[] = new \Tc\Component($this->_io, $this, $this->_root);
            }
            $this->_m_circuitCount = $this->_io->readU8le();
            $this->_m_circuits = [];
            $n = $this->circuitCount();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_circuits[] = new \Tc\Circuit($this->_io, $this, $this->_root);
            }
        }
        protected $_m_magic;
        protected $_m_saveVersion;
        protected $_m_nand;
        protected $_m_delay;
        protected $_m_customVisible;
        protected $_m_clockSpeed;
        protected $_m_scaleLevel;
        protected $_m_dependcyCount;
        protected $_m_dependecies;
        protected $_m_description;
        protected $_m_componentCount;
        protected $_m_components;
        protected $_m_circuitCount;
        protected $_m_circuits;
        public function magic() { return $this->_m_magic; }
        public function saveVersion() { return $this->_m_saveVersion; }
        public function nand() { return $this->_m_nand; }
        public function delay() { return $this->_m_delay; }
        public function customVisible() { return $this->_m_customVisible; }
        public function clockSpeed() { return $this->_m_clockSpeed; }
        public function scaleLevel() { return $this->_m_scaleLevel; }
        public function dependcyCount() { return $this->_m_dependcyCount; }
        public function dependecies() { return $this->_m_dependecies; }
        public function description() { return $this->_m_description; }
        public function componentCount() { return $this->_m_componentCount; }
        public function components() { return $this->_m_components; }
        public function circuitCount() { return $this->_m_circuitCount; }
        public function circuits() { return $this->_m_circuits; }
    }
}

namespace Tc {
    class String extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Tc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_len = $this->_io->readU8le();
            $this->_m_content = \Kaitai\Struct\Stream::bytesToStr($this->_io->readBytes($this->len()), "utf8");
        }
        protected $_m_len;
        protected $_m_content;
        public function len() { return $this->_m_len; }
        public function content() { return $this->_m_content; }
    }
}

namespace Tc {
    class Point extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Kaitai\Struct\Struct $_parent = null, \Tc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_x = $this->_io->readS1();
            $this->_m_y = $this->_io->readS1();
        }
        protected $_m_x;
        protected $_m_y;
        public function x() { return $this->_m_x; }
        public function y() { return $this->_m_y; }
    }
}

namespace Tc {
    class Component extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Tc $_parent = null, \Tc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_kind = $this->_io->readU2le();
            $this->_m_position = new \Tc\Point($this->_io, $this, $this->_root);
            $this->_m_rotation = $this->_io->readU1();
            $this->_m_permanentId = $this->_io->readU4le();
            $this->_m_customString = new \Tc\String($this->_io, $this, $this->_root);
            if ( (( (($this->kind() > 63) && ($this->kind() < 69)) ) || ($this->kind() == 94)) ) {
                $this->_m_programName = new \Tc\String($this->_io, $this, $this->_root);
            }
            if ($this->kind() == 92) {
                $this->_m_customId = $this->_io->readU8le();
            }
        }
        protected $_m_kind;
        protected $_m_position;
        protected $_m_rotation;
        protected $_m_permanentId;
        protected $_m_customString;
        protected $_m_programName;
        protected $_m_customId;
        public function kind() { return $this->_m_kind; }
        public function position() { return $this->_m_position; }
        public function rotation() { return $this->_m_rotation; }
        public function permanentId() { return $this->_m_permanentId; }
        public function customString() { return $this->_m_customString; }
        public function programName() { return $this->_m_programName; }
        public function customId() { return $this->_m_customId; }
    }
}

namespace Tc {
    class Circuit extends \Kaitai\Struct\Struct {
        public function __construct(\Kaitai\Struct\Stream $_io, \Tc $_parent = null, \Tc $_root = null) {
            parent::__construct($_io, $_parent, $_root);
            $this->_read();
        }

        private function _read() {
            $this->_m_permanentId = $this->_io->readU4le();
            $this->_m_kind = $this->_io->readU1();
            $this->_m_color = $this->_io->readU1();
            $this->_m_comment = new \Tc\String($this->_io, $this, $this->_root);
            $this->_m_pathLength = $this->_io->readU8le();
            $this->_m_path = [];
            $n = $this->pathLength();
            for ($i = 0; $i < $n; $i++) {
                $this->_m_path[] = new \Tc\Point($this->_io, $this, $this->_root);
            }
        }
        protected $_m_permanentId;
        protected $_m_kind;
        protected $_m_color;
        protected $_m_comment;
        protected $_m_pathLength;
        protected $_m_path;
        public function permanentId() { return $this->_m_permanentId; }
        public function kind() { return $this->_m_kind; }
        public function color() { return $this->_m_color; }
        public function comment() { return $this->_m_comment; }
        public function pathLength() { return $this->_m_pathLength; }
        public function path() { return $this->_m_path; }
    }
}

namespace Tc {
    class CircuitKind {
        const CK_BIT = 0;
        const CK_BYTE = 1;
        const CK_QWORD = 2;
    }
}

namespace Tc {
    class ComponentKind {
        const ERROR = 0;
        const FALSE = 1;
        const TRUE = 2;
        const BUFFER = 3;
        const NOT = 4;
        const AND = 5;
        const AND3 = 6;
        const NAND = 7;
        const OR = 8;
        const OR3 = 9;
        const NOR = 10;
        const XOR = 11;
        const XNOR = 12;
        const COUNTER = 13;
        const VIRTUALCOUNTER = 14;
        const QWORDCOUNTER = 15;
        const VIRTUALQWORDCOUNTER = 16;
        const RAM = 17;
        const VIRTUALRAM = 18;
        const QWORDRAM = 19;
        const VIRTUALQWORDRAM = 20;
        const STACK = 21;
        const VIRTUALSTACK = 22;
        const REGISTER = 23;
        const VIRTUALREGISTER = 24;
        const REGISTERRED = 25;
        const VIRTUALREGISTERRED = 26;
        const REGISTERREDPLUS = 27;
        const VIRTUALREGISTERREDPLUS = 28;
        const QWORDREGISTER = 29;
        const VIRTUALQWORDREGISTER = 30;
        const BYTESWITCH = 31;
        const MUX = 32;
        const DEMUX = 33;
        const BIGGERDEMUX = 34;
        const BYTECONSTANT = 35;
        const BYTENOT = 36;
        const BYTEOR = 37;
        const BYTEAND = 38;
        const BYTEXOR = 39;
        const BYTEEQUAL = 40;
        const BYTELESSU = 41;
        const BYTELESSI = 42;
        const BYTENEG = 43;
        const BYTEADD2 = 44;
        const BYTEMUL2 = 45;
        const BYTESPLITTER = 46;
        const BYTEMAKER = 47;
        const QWORDSPLITTER = 48;
        const QWORDMAKER = 49;
        const FULLADDER = 50;
        const BITMEMORY = 51;
        const VIRTUALBITMEMORY = 52;
        const SRLATCH = 53;
        const RANDOM = 54;
        const CLOCK = 55;
        const WAVEFORMGENERATOR = 56;
        const HTTPCLIENT = 57;
        const ASCIISCREEN = 58;
        const KEYBOARD = 59;
        const FILEINPUT = 60;
        const HALT = 61;
        const CIRCUITCLUSTER = 62;
        const SCREEN = 63;
        const PROGRAM1 = 64;
        const PROGRAM1RED = 65;
        const PROGRAM2 = 66;
        const PROGRAM3 = 67;
        const PROGRAM4 = 68;
        const LEVELGATE = 69;
        const INPUT1 = 70;
        const INPUT2 = 71;
        const INPUT3 = 72;
        const INPUT4 = 73;
        const INPUT1BCONDITIONS = 74;
        const INPUT1B = 75;
        const INPUTQWORD = 76;
        const INPUT1BCODE = 77;
        const INPUT1_1B = 78;
        const OUTPUT1 = 79;
        const OUTPUT1SUM = 80;
        const OUTPUT1CAR = 81;
        const OUTPUT1AVAL = 82;
        const OUTPUT1BVAL = 83;
        const OUTPUT2 = 84;
        const OUTPUT3 = 85;
        const OUTPUT4 = 86;
        const OUTPUT1B = 87;
        const OUTPUTQWORD = 88;
        const OUTPUT1_1B = 89;
        const OUTPUTCOUNTER = 90;
        const INPUTOUTPUT = 91;
        const CUSTOM = 92;
        const VIRTUALCUSTOM = 93;
        const BYTELESS = 94;
        const BYTEADD = 95;
        const BYTEMUL = 96;
        const FLIPFLOP = 97;
    }
}
