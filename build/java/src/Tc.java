// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;
import java.util.Arrays;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class Tc extends KaitaiStruct {
    public static Tc fromFile(String fileName) throws IOException {
        return new Tc(new ByteBufferKaitaiStream(fileName));
    }

    public enum CircuitKind {
        CK_BIT(0),
        CK_BYTE(1),
        CK_QWORD(2);

        private final long id;
        CircuitKind(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, CircuitKind> byId = new HashMap<Long, CircuitKind>(3);
        static {
            for (CircuitKind e : CircuitKind.values())
                byId.put(e.id(), e);
        }
        public static CircuitKind byId(long id) { return byId.get(id); }
    }

    public enum ComponentKind {
        ERROR(0),
        FALSE(1),
        TRUE(2),
        BUFFER(3),
        NOT(4),
        AND(5),
        AND3(6),
        NAND(7),
        OR(8),
        OR3(9),
        NOR(10),
        XOR(11),
        XNOR(12),
        BYTECOUNTER(13),
        VIRTUALBYTECOUNTER(14),
        QWORDCOUNTER(15),
        VIRTUALQWORDCOUNTER(16),
        RAM(17),
        VIRTUALRAM(18),
        QWORDRAM(19),
        VIRTUALQWORDRAM(20),
        STACK(21),
        VIRTUALSTACK(22),
        REGISTER(23),
        VIRTUALREGISTER(24),
        REGISTERRED(25),
        VIRTUALREGISTERRED(26),
        REGISTERREDPLUS(27),
        VIRTUALREGISTERREDPLUS(28),
        QWORDREGISTER(29),
        VIRTUALQWORDREGISTER(30),
        BYTESWITCH(31),
        BYTEMUX(32),
        DECODER1(33),
        DECODER3(34),
        BYTECONSTANT(35),
        BYTENOT(36),
        BYTEOR(37),
        BYTEAND(38),
        BYTEXOR(39),
        BYTEEQUAL(40),
        BYTELESSU(41),
        BYTELESSI(42),
        BYTENEG(43),
        BYTEADD(44),
        BYTEMUL(45),
        BYTESPLITTER(46),
        BYTEMAKER(47),
        QWORDSPLITTER(48),
        QWORDMAKER(49),
        FULLADDER(50),
        BITMEMORY(51),
        VIRTUALBITMEMORY(52),
        SRLATCH(53),
        RANDOM(54),
        CLOCK(55),
        WAVEFORMGENERATOR(56),
        HTTPCLIENT(57),
        ASCIISCREEN(58),
        KEYPAD(59),
        FILEROM(60),
        HALT(61),
        CIRCUITCLUSTER(62),
        SCREEN(63),
        PROGRAM1(64),
        PROGRAM1RED(65),
        PROGRAM2(66),
        PROGRAM3(67),
        PROGRAM4(68),
        LEVELGATE(69),
        INPUT1(70),
        INPUT2(71),
        INPUT3(72),
        INPUT4(73),
        INPUT1BCONDITIONS(74),
        INPUT1B(75),
        INPUTQWORD(76),
        INPUT1BCODE(77),
        INPUT1_1B(78),
        OUTPUT1(79),
        OUTPUT1SUM(80),
        OUTPUT1CAR(81),
        OUTPUT1AVAL(82),
        OUTPUT1BVAL(83),
        OUTPUT2(84),
        OUTPUT3(85),
        OUTPUT4(86),
        OUTPUT1B(87),
        OUTPUTQWORD(88),
        OUTPUT1_1B(89),
        OUTPUTCOUNTER(90),
        INPUTOUTPUT(91),
        CUSTOM(92),
        VIRTUALCUSTOM(93),
        QWORDPROGRAM(94),
        DELAYBUFFER(95),
        VIRTUALDELAYBUFFER(96),
        CONSOLE(97),
        BYTESHL(98),
        BYTESHR(99),
        QWORDCONSTANT(100),
        QWORDNOT(101),
        QWORDOR(102),
        QWORDAND(103),
        QWORDXOR(104),
        QWORDNEG(105),
        QWORDADD(106),
        QWORDMUL(107),
        QWORDEQUAL(108),
        QWORDLESSU(109),
        QWORDLESSI(110),
        QWORDSHL(111),
        QWORDSHR(112),
        QWORDMUX(113),
        QWORDSWITCH(114),
        STATEBIT(115),
        STATEBYTE(116);

        private final long id;
        ComponentKind(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, ComponentKind> byId = new HashMap<Long, ComponentKind>(117);
        static {
            for (ComponentKind e : ComponentKind.values())
                byId.put(e.id(), e);
        }
        public static ComponentKind byId(long id) { return byId.get(id); }
    }

    public Tc(KaitaiStream _io) {
        this(_io, null, null);
    }

    public Tc(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public Tc(KaitaiStream _io, KaitaiStruct _parent, Tc _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.magic = this._io.readBytes(1);
        if (!(Arrays.equals(magic(), new byte[] { 1 }))) {
            throw new KaitaiStream.ValidationNotEqualError(new byte[] { 1 }, magic(), _io(), "/seq/0");
        }
        this.saveVersion = this._io.readS8le();
        this.nand = this._io.readU4le();
        this.delay = this._io.readU4le();
        this.customVisible = this._io.readU1();
        this.clockSpeed = this._io.readU4le();
        this.nestingLevel = this._io.readU1();
        this.dependcyCount = this._io.readU8le();
        dependecies = new ArrayList<Long>(((Number) (dependcyCount())).intValue());
        for (int i = 0; i < dependcyCount(); i++) {
            this.dependecies.add(this._io.readU8le());
        }
        this.description = new String(this._io, this, _root);
        this.unpacked = this._io.readU1();
        this.cameraPosition = new Point(this._io, this, _root);
        this.cachedDesign = this._io.readU1();
        this.componentCount = this._io.readU8le();
        components = new ArrayList<Component>(((Number) (componentCount())).intValue());
        for (int i = 0; i < componentCount(); i++) {
            this.components.add(new Component(this._io, this, _root));
        }
        this.circuitCount = this._io.readU8le();
        circuits = new ArrayList<Circuit>(((Number) (circuitCount())).intValue());
        for (int i = 0; i < circuitCount(); i++) {
            this.circuits.add(new Circuit(this._io, this, _root));
        }
    }
    public static class Point extends KaitaiStruct {
        public static Point fromFile(String fileName) throws IOException {
            return new Point(new ByteBufferKaitaiStream(fileName));
        }

        public Point(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Point(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public Point(KaitaiStream _io, KaitaiStruct _parent, Tc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.x = this._io.readS2le();
            this.y = this._io.readS2le();
        }
        private short x;
        private short y;
        private Tc _root;
        private KaitaiStruct _parent;
        public short x() { return x; }
        public short y() { return y; }
        public Tc _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    public static class String extends KaitaiStruct {
        public static String fromFile(String fileName) throws IOException {
            return new String(new ByteBufferKaitaiStream(fileName));
        }

        public String(KaitaiStream _io) {
            this(_io, null, null);
        }

        public String(KaitaiStream _io, KaitaiStruct _parent) {
            this(_io, _parent, null);
        }

        public String(KaitaiStream _io, KaitaiStruct _parent, Tc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.len = this._io.readU8le();
            this.content = new String(this._io.readBytes(len()), Charset.forName("utf8"));
        }
        private long len;
        private String content;
        private Tc _root;
        private KaitaiStruct _parent;
        public long len() { return len; }
        public String content() { return content; }
        public Tc _root() { return _root; }
        public KaitaiStruct _parent() { return _parent; }
    }
    public static class CircuitPath extends KaitaiStruct {
        public static CircuitPath fromFile(String fileName) throws IOException {
            return new CircuitPath(new ByteBufferKaitaiStream(fileName));
        }

        public CircuitPath(KaitaiStream _io) {
            this(_io, null, null);
        }

        public CircuitPath(KaitaiStream _io, Tc.Circuit _parent) {
            this(_io, _parent, null);
        }

        public CircuitPath(KaitaiStream _io, Tc.Circuit _parent, Tc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.start = new Point(this._io, this, _root);
            this.body = new ArrayList<CircuitSegment>();
            {
                CircuitSegment _it;
                int i = 0;
                do {
                    _it = new CircuitSegment(this._io, this, _root);
                    this.body.add(_it);
                    i++;
                } while (!(_it.length() == 0));
            }
            if ( ((body().get(body().size() - 1).direction() == 1) && (body().get(body().size() - 1).length() == 0)) ) {
                this.end = new Point(this._io, this, _root);
            }
        }
        private Point start;
        private ArrayList<CircuitSegment> body;
        private Point end;
        private Tc _root;
        private Tc.Circuit _parent;
        public Point start() { return start; }
        public ArrayList<CircuitSegment> body() { return body; }
        public Point end() { return end; }
        public Tc _root() { return _root; }
        public Tc.Circuit _parent() { return _parent; }
    }
    public static class CircuitSegment extends KaitaiStruct {
        public static CircuitSegment fromFile(String fileName) throws IOException {
            return new CircuitSegment(new ByteBufferKaitaiStream(fileName));
        }

        public CircuitSegment(KaitaiStream _io) {
            this(_io, null, null);
        }

        public CircuitSegment(KaitaiStream _io, Tc.CircuitPath _parent) {
            this(_io, _parent, null);
        }

        public CircuitSegment(KaitaiStream _io, Tc.CircuitPath _parent, Tc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.direction = this._io.readBitsIntBe(3);
            this.length = this._io.readBitsIntBe(5);
        }
        private long direction;
        private long length;
        private Tc _root;
        private Tc.CircuitPath _parent;
        public long direction() { return direction; }
        public long length() { return length; }
        public Tc _root() { return _root; }
        public Tc.CircuitPath _parent() { return _parent; }
    }
    public static class Circuit extends KaitaiStruct {
        public static Circuit fromFile(String fileName) throws IOException {
            return new Circuit(new ByteBufferKaitaiStream(fileName));
        }

        public Circuit(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Circuit(KaitaiStream _io, Tc _parent) {
            this(_io, _parent, null);
        }

        public Circuit(KaitaiStream _io, Tc _parent, Tc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.permanentId = this._io.readU8le();
            this.kind = Tc.CircuitKind.byId(this._io.readU1());
            this.color = this._io.readU1();
            this.comment = new String(this._io, this, _root);
            this.path = new CircuitPath(this._io, this, _root);
        }
        private long permanentId;
        private CircuitKind kind;
        private int color;
        private String comment;
        private CircuitPath path;
        private Tc _root;
        private Tc _parent;
        public long permanentId() { return permanentId; }
        public CircuitKind kind() { return kind; }
        public int color() { return color; }
        public String comment() { return comment; }
        public CircuitPath path() { return path; }
        public Tc _root() { return _root; }
        public Tc _parent() { return _parent; }
    }
    public static class Component extends KaitaiStruct {
        public static Component fromFile(String fileName) throws IOException {
            return new Component(new ByteBufferKaitaiStream(fileName));
        }

        public Component(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Component(KaitaiStream _io, Tc _parent) {
            this(_io, _parent, null);
        }

        public Component(KaitaiStream _io, Tc _parent, Tc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.kind = Tc.ComponentKind.byId(this._io.readU2le());
            this.position = new Point(this._io, this, _root);
            this.rotation = this._io.readU1();
            this.permanentId = this._io.readU8le();
            this.customString = new String(this._io, this, _root);
            if ( (( ((kind().id() > 63) && (kind().id() < 69)) ) || (kind().id() == 94)) ) {
                this.programName = new String(this._io, this, _root);
            }
            if (kind().id() == 92) {
                this.customId = this._io.readU8le();
            }
        }
        private ComponentKind kind;
        private Point position;
        private int rotation;
        private long permanentId;
        private String customString;
        private String programName;
        private Long customId;
        private Tc _root;
        private Tc _parent;
        public ComponentKind kind() { return kind; }
        public Point position() { return position; }
        public int rotation() { return rotation; }
        public long permanentId() { return permanentId; }
        public String customString() { return customString; }
        public String programName() { return programName; }
        public Long customId() { return customId; }
        public Tc _root() { return _root; }
        public Tc _parent() { return _parent; }
    }
    private byte[] magic;
    private long saveVersion;
    private long nand;
    private long delay;
    private int customVisible;
    private long clockSpeed;
    private int nestingLevel;
    private long dependcyCount;
    private ArrayList<Long> dependecies;
    private String description;
    private int unpacked;
    private Point cameraPosition;
    private int cachedDesign;
    private long componentCount;
    private ArrayList<Component> components;
    private long circuitCount;
    private ArrayList<Circuit> circuits;
    private Tc _root;
    private KaitaiStruct _parent;
    public byte[] magic() { return magic; }
    public long saveVersion() { return saveVersion; }
    public long nand() { return nand; }
    public long delay() { return delay; }
    public int customVisible() { return customVisible; }
    public long clockSpeed() { return clockSpeed; }
    public int nestingLevel() { return nestingLevel; }
    public long dependcyCount() { return dependcyCount; }
    public ArrayList<Long> dependecies() { return dependecies; }
    public String description() { return description; }
    public int unpacked() { return unpacked; }
    public Point cameraPosition() { return cameraPosition; }
    public int cachedDesign() { return cachedDesign; }
    public long componentCount() { return componentCount; }
    public ArrayList<Component> components() { return components; }
    public long circuitCount() { return circuitCount; }
    public ArrayList<Circuit> circuits() { return circuits; }
    public Tc _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
