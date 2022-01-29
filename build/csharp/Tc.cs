// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class Tc : KaitaiStruct
    {
        public static Tc FromFile(string fileName)
        {
            return new Tc(new KaitaiStream(fileName));
        }


        public enum CircuitKind
        {
            CkBit = 0,
            CkByte = 1,
            CkQword = 2,
        }

        public enum ComponentKind
        {
            Error = 0,
            False = 1,
            True = 2,
            Buffer = 3,
            Not = 4,
            And = 5,
            And3 = 6,
            Nand = 7,
            Or = 8,
            Or3 = 9,
            Nor = 10,
            Xor = 11,
            Xnor = 12,
            Bytecounter = 13,
            Virtualbytecounter = 14,
            Qwordcounter = 15,
            Virtualqwordcounter = 16,
            Ram = 17,
            Virtualram = 18,
            Qwordram = 19,
            Virtualqwordram = 20,
            Stack = 21,
            Virtualstack = 22,
            Register = 23,
            Virtualregister = 24,
            Registerred = 25,
            Virtualregisterred = 26,
            Registerredplus = 27,
            Virtualregisterredplus = 28,
            Qwordregister = 29,
            Virtualqwordregister = 30,
            Byteswitch = 31,
            Bytemux = 32,
            Decoder1 = 33,
            Decoder3 = 34,
            Byteconstant = 35,
            Bytenot = 36,
            Byteor = 37,
            Byteand = 38,
            Bytexor = 39,
            Byteequal = 40,
            Bytelessu = 41,
            Bytelessi = 42,
            Byteneg = 43,
            Byteadd = 44,
            Bytemul = 45,
            Bytesplitter = 46,
            Bytemaker = 47,
            Qwordsplitter = 48,
            Qwordmaker = 49,
            Fulladder = 50,
            Bitmemory = 51,
            Virtualbitmemory = 52,
            Srlatch = 53,
            Random = 54,
            Clock = 55,
            Waveformgenerator = 56,
            Httpclient = 57,
            Asciiscreen = 58,
            Keypad = 59,
            Filerom = 60,
            Halt = 61,
            Circuitcluster = 62,
            Screen = 63,
            Program1 = 64,
            Program1red = 65,
            Program2 = 66,
            Program3 = 67,
            Program4 = 68,
            Levelgate = 69,
            Input1 = 70,
            Input2 = 71,
            Input3 = 72,
            Input4 = 73,
            Input1bconditions = 74,
            Input1b = 75,
            Inputqword = 76,
            Input1bcode = 77,
            Input11b = 78,
            Output1 = 79,
            Output1sum = 80,
            Output1car = 81,
            Output1aval = 82,
            Output1bval = 83,
            Output2 = 84,
            Output3 = 85,
            Output4 = 86,
            Output1b = 87,
            Outputqword = 88,
            Output11b = 89,
            Outputcounter = 90,
            Inputoutput = 91,
            Custom = 92,
            Virtualcustom = 93,
            Qwordprogram = 94,
            Delaybuffer = 95,
            Virtualdelaybuffer = 96,
            Console = 97,
            Byteshl = 98,
            Byteshr = 99,
            Qwordconstant = 100,
            Qwordnot = 101,
            Qwordor = 102,
            Qwordand = 103,
            Qwordxor = 104,
            Qwordneg = 105,
            Qwordadd = 106,
            Qwordmul = 107,
            Qwordequal = 108,
            Qwordlessu = 109,
            Qwordlessi = 110,
            Qwordshl = 111,
            Qwordshr = 112,
            Qwordmux = 113,
            Qwordswitch = 114,
            Statebit = 115,
            Statebyte = 116,
        }
        public Tc(KaitaiStream p__io, KaitaiStruct p__parent = null, Tc p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _magic = m_io.ReadBytes(1);
            if (!((KaitaiStream.ByteArrayCompare(Magic, new byte[] { 1 }) == 0)))
            {
                throw new ValidationNotEqualError(new byte[] { 1 }, Magic, M_Io, "/seq/0");
            }
            _saveVersion = m_io.ReadS8le();
            _nand = m_io.ReadU4le();
            _delay = m_io.ReadU4le();
            _customVisible = m_io.ReadU1();
            _clockSpeed = m_io.ReadU4le();
            _nestingLevel = m_io.ReadU1();
            _dependcyCount = m_io.ReadU8le();
            _dependecies = new List<ulong>((int) (DependcyCount));
            for (var i = 0; i < DependcyCount; i++)
            {
                _dependecies.Add(m_io.ReadU8le());
            }
            _description = new String(m_io, this, m_root);
            _unpacked = m_io.ReadU1();
            _cameraPosition = new Point(m_io, this, m_root);
            _cachedDesign = m_io.ReadU1();
            _componentCount = m_io.ReadU8le();
            _components = new List<Component>((int) (ComponentCount));
            for (var i = 0; i < ComponentCount; i++)
            {
                _components.Add(new Component(m_io, this, m_root));
            }
            _circuitCount = m_io.ReadU8le();
            _circuits = new List<Circuit>((int) (CircuitCount));
            for (var i = 0; i < CircuitCount; i++)
            {
                _circuits.Add(new Circuit(m_io, this, m_root));
            }
        }
        public partial class Point : KaitaiStruct
        {
            public static Point FromFile(string fileName)
            {
                return new Point(new KaitaiStream(fileName));
            }

            public Point(KaitaiStream p__io, KaitaiStruct p__parent = null, Tc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _x = m_io.ReadS2le();
                _y = m_io.ReadS2le();
            }
            private short _x;
            private short _y;
            private Tc m_root;
            private KaitaiStruct m_parent;
            public short X { get { return _x; } }
            public short Y { get { return _y; } }
            public Tc M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        public partial class String : KaitaiStruct
        {
            public static String FromFile(string fileName)
            {
                return new String(new KaitaiStream(fileName));
            }

            public String(KaitaiStream p__io, KaitaiStruct p__parent = null, Tc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _len = m_io.ReadU8le();
                _content = System.Text.Encoding.GetEncoding("utf8").GetString(m_io.ReadBytes(Len));
            }
            private ulong _len;
            private string _content;
            private Tc m_root;
            private KaitaiStruct m_parent;
            public ulong Len { get { return _len; } }
            public string Content { get { return _content; } }
            public Tc M_Root { get { return m_root; } }
            public KaitaiStruct M_Parent { get { return m_parent; } }
        }
        public partial class CircuitPath : KaitaiStruct
        {
            public static CircuitPath FromFile(string fileName)
            {
                return new CircuitPath(new KaitaiStream(fileName));
            }

            public CircuitPath(KaitaiStream p__io, Tc.Circuit p__parent = null, Tc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _start = new Point(m_io, this, m_root);
                _body = new List<CircuitSegment>();
                {
                    var i = 0;
                    CircuitSegment M_;
                    do {
                        M_ = new CircuitSegment(m_io, this, m_root);
                        _body.Add(M_);
                        i++;
                    } while (!(M_.Length == 0));
                }
            }
            private Point _start;
            private List<CircuitSegment> _body;
            private Tc m_root;
            private Tc.Circuit m_parent;
            public Point Start { get { return _start; } }
            public List<CircuitSegment> Body { get { return _body; } }
            public Tc M_Root { get { return m_root; } }
            public Tc.Circuit M_Parent { get { return m_parent; } }
        }
        public partial class CircuitSegment : KaitaiStruct
        {
            public static CircuitSegment FromFile(string fileName)
            {
                return new CircuitSegment(new KaitaiStream(fileName));
            }

            public CircuitSegment(KaitaiStream p__io, Tc.CircuitPath p__parent = null, Tc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _direction = m_io.ReadBitsIntBe(3);
                _length = m_io.ReadBitsIntBe(5);
            }
            private ulong _direction;
            private ulong _length;
            private Tc m_root;
            private Tc.CircuitPath m_parent;
            public ulong Direction { get { return _direction; } }
            public ulong Length { get { return _length; } }
            public Tc M_Root { get { return m_root; } }
            public Tc.CircuitPath M_Parent { get { return m_parent; } }
        }
        public partial class Circuit : KaitaiStruct
        {
            public static Circuit FromFile(string fileName)
            {
                return new Circuit(new KaitaiStream(fileName));
            }

            public Circuit(KaitaiStream p__io, Tc p__parent = null, Tc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _permanentId = m_io.ReadU8le();
                _kind = ((Tc.CircuitKind) m_io.ReadU1());
                _color = m_io.ReadU1();
                _comment = new String(m_io, this, m_root);
                _path = new CircuitPath(m_io, this, m_root);
            }
            private ulong _permanentId;
            private CircuitKind _kind;
            private byte _color;
            private String _comment;
            private CircuitPath _path;
            private Tc m_root;
            private Tc m_parent;
            public ulong PermanentId { get { return _permanentId; } }
            public CircuitKind Kind { get { return _kind; } }
            public byte Color { get { return _color; } }
            public String Comment { get { return _comment; } }
            public CircuitPath Path { get { return _path; } }
            public Tc M_Root { get { return m_root; } }
            public Tc M_Parent { get { return m_parent; } }
        }
        public partial class Component : KaitaiStruct
        {
            public static Component FromFile(string fileName)
            {
                return new Component(new KaitaiStream(fileName));
            }

            public Component(KaitaiStream p__io, Tc p__parent = null, Tc p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _kind = ((Tc.ComponentKind) m_io.ReadU2le());
                _position = new Point(m_io, this, m_root);
                _rotation = m_io.ReadU1();
                _permanentId = m_io.ReadU8le();
                _customString = new String(m_io, this, m_root);
                if ( (( ((Kind > 63) && (Kind < 69)) ) || (Kind == 94)) ) {
                    _programName = new String(m_io, this, m_root);
                }
                if (Kind == 92) {
                    _customId = m_io.ReadU8le();
                }
            }
            private ComponentKind _kind;
            private Point _position;
            private byte _rotation;
            private ulong _permanentId;
            private String _customString;
            private String _programName;
            private ulong? _customId;
            private Tc m_root;
            private Tc m_parent;
            public ComponentKind Kind { get { return _kind; } }
            public Point Position { get { return _position; } }
            public byte Rotation { get { return _rotation; } }
            public ulong PermanentId { get { return _permanentId; } }
            public String CustomString { get { return _customString; } }
            public String ProgramName { get { return _programName; } }
            public ulong? CustomId { get { return _customId; } }
            public Tc M_Root { get { return m_root; } }
            public Tc M_Parent { get { return m_parent; } }
        }
        private byte[] _magic;
        private long _saveVersion;
        private uint _nand;
        private uint _delay;
        private byte _customVisible;
        private uint _clockSpeed;
        private byte _nestingLevel;
        private ulong _dependcyCount;
        private List<ulong> _dependecies;
        private String _description;
        private byte _unpacked;
        private Point _cameraPosition;
        private byte _cachedDesign;
        private ulong _componentCount;
        private List<Component> _components;
        private ulong _circuitCount;
        private List<Circuit> _circuits;
        private Tc m_root;
        private KaitaiStruct m_parent;
        public byte[] Magic { get { return _magic; } }
        public long SaveVersion { get { return _saveVersion; } }
        public uint Nand { get { return _nand; } }
        public uint Delay { get { return _delay; } }
        public byte CustomVisible { get { return _customVisible; } }
        public uint ClockSpeed { get { return _clockSpeed; } }
        public byte NestingLevel { get { return _nestingLevel; } }
        public ulong DependcyCount { get { return _dependcyCount; } }
        public List<ulong> Dependecies { get { return _dependecies; } }
        public String Description { get { return _description; } }
        public byte Unpacked { get { return _unpacked; } }
        public Point CameraPosition { get { return _cameraPosition; } }
        public byte CachedDesign { get { return _cachedDesign; } }
        public ulong ComponentCount { get { return _componentCount; } }
        public List<Component> Components { get { return _components; } }
        public ulong CircuitCount { get { return _circuitCount; } }
        public List<Circuit> Circuits { get { return _circuits; } }
        public Tc M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
