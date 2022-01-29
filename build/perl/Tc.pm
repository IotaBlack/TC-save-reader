# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

use strict;
use warnings;
use IO::KaitaiStruct 0.009_000;
use Encode;

########################################################################
package Tc;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

our $CIRCUIT_KIND_CK_BIT = 0;
our $CIRCUIT_KIND_CK_BYTE = 1;
our $CIRCUIT_KIND_CK_QWORD = 2;

our $COMPONENT_KIND_ERROR = 0;
our $COMPONENT_KIND_FALSE = 1;
our $COMPONENT_KIND_TRUE = 2;
our $COMPONENT_KIND_BUFFER = 3;
our $COMPONENT_KIND_NOT = 4;
our $COMPONENT_KIND_AND = 5;
our $COMPONENT_KIND_AND3 = 6;
our $COMPONENT_KIND_NAND = 7;
our $COMPONENT_KIND_OR = 8;
our $COMPONENT_KIND_OR3 = 9;
our $COMPONENT_KIND_NOR = 10;
our $COMPONENT_KIND_XOR = 11;
our $COMPONENT_KIND_XNOR = 12;
our $COMPONENT_KIND_BYTECOUNTER = 13;
our $COMPONENT_KIND_VIRTUALBYTECOUNTER = 14;
our $COMPONENT_KIND_QWORDCOUNTER = 15;
our $COMPONENT_KIND_VIRTUALQWORDCOUNTER = 16;
our $COMPONENT_KIND_RAM = 17;
our $COMPONENT_KIND_VIRTUALRAM = 18;
our $COMPONENT_KIND_QWORDRAM = 19;
our $COMPONENT_KIND_VIRTUALQWORDRAM = 20;
our $COMPONENT_KIND_STACK = 21;
our $COMPONENT_KIND_VIRTUALSTACK = 22;
our $COMPONENT_KIND_REGISTER = 23;
our $COMPONENT_KIND_VIRTUALREGISTER = 24;
our $COMPONENT_KIND_REGISTERRED = 25;
our $COMPONENT_KIND_VIRTUALREGISTERRED = 26;
our $COMPONENT_KIND_REGISTERREDPLUS = 27;
our $COMPONENT_KIND_VIRTUALREGISTERREDPLUS = 28;
our $COMPONENT_KIND_QWORDREGISTER = 29;
our $COMPONENT_KIND_VIRTUALQWORDREGISTER = 30;
our $COMPONENT_KIND_BYTESWITCH = 31;
our $COMPONENT_KIND_BYTEMUX = 32;
our $COMPONENT_KIND_DECODER1 = 33;
our $COMPONENT_KIND_DECODER3 = 34;
our $COMPONENT_KIND_BYTECONSTANT = 35;
our $COMPONENT_KIND_BYTENOT = 36;
our $COMPONENT_KIND_BYTEOR = 37;
our $COMPONENT_KIND_BYTEAND = 38;
our $COMPONENT_KIND_BYTEXOR = 39;
our $COMPONENT_KIND_BYTEEQUAL = 40;
our $COMPONENT_KIND_BYTELESSU = 41;
our $COMPONENT_KIND_BYTELESSI = 42;
our $COMPONENT_KIND_BYTENEG = 43;
our $COMPONENT_KIND_BYTEADD = 44;
our $COMPONENT_KIND_BYTEMUL = 45;
our $COMPONENT_KIND_BYTESPLITTER = 46;
our $COMPONENT_KIND_BYTEMAKER = 47;
our $COMPONENT_KIND_QWORDSPLITTER = 48;
our $COMPONENT_KIND_QWORDMAKER = 49;
our $COMPONENT_KIND_FULLADDER = 50;
our $COMPONENT_KIND_BITMEMORY = 51;
our $COMPONENT_KIND_VIRTUALBITMEMORY = 52;
our $COMPONENT_KIND_SRLATCH = 53;
our $COMPONENT_KIND_RANDOM = 54;
our $COMPONENT_KIND_CLOCK = 55;
our $COMPONENT_KIND_WAVEFORMGENERATOR = 56;
our $COMPONENT_KIND_HTTPCLIENT = 57;
our $COMPONENT_KIND_ASCIISCREEN = 58;
our $COMPONENT_KIND_KEYPAD = 59;
our $COMPONENT_KIND_FILEROM = 60;
our $COMPONENT_KIND_HALT = 61;
our $COMPONENT_KIND_CIRCUITCLUSTER = 62;
our $COMPONENT_KIND_SCREEN = 63;
our $COMPONENT_KIND_PROGRAM1 = 64;
our $COMPONENT_KIND_PROGRAM1RED = 65;
our $COMPONENT_KIND_PROGRAM2 = 66;
our $COMPONENT_KIND_PROGRAM3 = 67;
our $COMPONENT_KIND_PROGRAM4 = 68;
our $COMPONENT_KIND_LEVELGATE = 69;
our $COMPONENT_KIND_INPUT1 = 70;
our $COMPONENT_KIND_INPUT2 = 71;
our $COMPONENT_KIND_INPUT3 = 72;
our $COMPONENT_KIND_INPUT4 = 73;
our $COMPONENT_KIND_INPUT1BCONDITIONS = 74;
our $COMPONENT_KIND_INPUT1B = 75;
our $COMPONENT_KIND_INPUTQWORD = 76;
our $COMPONENT_KIND_INPUT1BCODE = 77;
our $COMPONENT_KIND_INPUT1_1B = 78;
our $COMPONENT_KIND_OUTPUT1 = 79;
our $COMPONENT_KIND_OUTPUT1SUM = 80;
our $COMPONENT_KIND_OUTPUT1CAR = 81;
our $COMPONENT_KIND_OUTPUT1AVAL = 82;
our $COMPONENT_KIND_OUTPUT1BVAL = 83;
our $COMPONENT_KIND_OUTPUT2 = 84;
our $COMPONENT_KIND_OUTPUT3 = 85;
our $COMPONENT_KIND_OUTPUT4 = 86;
our $COMPONENT_KIND_OUTPUT1B = 87;
our $COMPONENT_KIND_OUTPUTQWORD = 88;
our $COMPONENT_KIND_OUTPUT1_1B = 89;
our $COMPONENT_KIND_OUTPUTCOUNTER = 90;
our $COMPONENT_KIND_INPUTOUTPUT = 91;
our $COMPONENT_KIND_CUSTOM = 92;
our $COMPONENT_KIND_VIRTUALCUSTOM = 93;
our $COMPONENT_KIND_QWORDPROGRAM = 94;
our $COMPONENT_KIND_DELAYBUFFER = 95;
our $COMPONENT_KIND_VIRTUALDELAYBUFFER = 96;
our $COMPONENT_KIND_CONSOLE = 97;
our $COMPONENT_KIND_BYTESHL = 98;
our $COMPONENT_KIND_BYTESHR = 99;
our $COMPONENT_KIND_QWORDCONSTANT = 100;
our $COMPONENT_KIND_QWORDNOT = 101;
our $COMPONENT_KIND_QWORDOR = 102;
our $COMPONENT_KIND_QWORDAND = 103;
our $COMPONENT_KIND_QWORDXOR = 104;
our $COMPONENT_KIND_QWORDNEG = 105;
our $COMPONENT_KIND_QWORDADD = 106;
our $COMPONENT_KIND_QWORDMUL = 107;
our $COMPONENT_KIND_QWORDEQUAL = 108;
our $COMPONENT_KIND_QWORDLESSU = 109;
our $COMPONENT_KIND_QWORDLESSI = 110;
our $COMPONENT_KIND_QWORDSHL = 111;
our $COMPONENT_KIND_QWORDSHR = 112;
our $COMPONENT_KIND_QWORDMUX = 113;
our $COMPONENT_KIND_QWORDSWITCH = 114;
our $COMPONENT_KIND_STATEBIT = 115;
our $COMPONENT_KIND_STATEBYTE = 116;

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{magic} = $self->{_io}->read_bytes(1);
    $self->{save_version} = $self->{_io}->read_s8le();
    $self->{nand} = $self->{_io}->read_u4le();
    $self->{delay} = $self->{_io}->read_u4le();
    $self->{custom_visible} = $self->{_io}->read_u1();
    $self->{clock_speed} = $self->{_io}->read_u4le();
    $self->{nesting_level} = $self->{_io}->read_u1();
    $self->{dependcy_count} = $self->{_io}->read_u8le();
    $self->{dependecies} = ();
    my $n_dependecies = $self->dependcy_count();
    for (my $i = 0; $i < $n_dependecies; $i++) {
        $self->{dependecies}[$i] = $self->{_io}->read_u8le();
    }
    $self->{description} = Tc::String->new($self->{_io}, $self, $self->{_root});
    $self->{unpacked} = $self->{_io}->read_u1();
    $self->{camera_position} = Tc::Point->new($self->{_io}, $self, $self->{_root});
    $self->{cached_design} = $self->{_io}->read_u1();
    $self->{component_count} = $self->{_io}->read_u8le();
    $self->{components} = ();
    my $n_components = $self->component_count();
    for (my $i = 0; $i < $n_components; $i++) {
        $self->{components}[$i] = Tc::Component->new($self->{_io}, $self, $self->{_root});
    }
    $self->{circuit_count} = $self->{_io}->read_u8le();
    $self->{circuits} = ();
    my $n_circuits = $self->circuit_count();
    for (my $i = 0; $i < $n_circuits; $i++) {
        $self->{circuits}[$i] = Tc::Circuit->new($self->{_io}, $self, $self->{_root});
    }
}

sub magic {
    my ($self) = @_;
    return $self->{magic};
}

sub save_version {
    my ($self) = @_;
    return $self->{save_version};
}

sub nand {
    my ($self) = @_;
    return $self->{nand};
}

sub delay {
    my ($self) = @_;
    return $self->{delay};
}

sub custom_visible {
    my ($self) = @_;
    return $self->{custom_visible};
}

sub clock_speed {
    my ($self) = @_;
    return $self->{clock_speed};
}

sub nesting_level {
    my ($self) = @_;
    return $self->{nesting_level};
}

sub dependcy_count {
    my ($self) = @_;
    return $self->{dependcy_count};
}

sub dependecies {
    my ($self) = @_;
    return $self->{dependecies};
}

sub description {
    my ($self) = @_;
    return $self->{description};
}

sub unpacked {
    my ($self) = @_;
    return $self->{unpacked};
}

sub camera_position {
    my ($self) = @_;
    return $self->{camera_position};
}

sub cached_design {
    my ($self) = @_;
    return $self->{cached_design};
}

sub component_count {
    my ($self) = @_;
    return $self->{component_count};
}

sub components {
    my ($self) = @_;
    return $self->{components};
}

sub circuit_count {
    my ($self) = @_;
    return $self->{circuit_count};
}

sub circuits {
    my ($self) = @_;
    return $self->{circuits};
}

########################################################################
package Tc::Point;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{x} = $self->{_io}->read_s2le();
    $self->{y} = $self->{_io}->read_s2le();
}

sub x {
    my ($self) = @_;
    return $self->{x};
}

sub y {
    my ($self) = @_;
    return $self->{y};
}

########################################################################
package Tc::String;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{len} = $self->{_io}->read_u8le();
    $self->{content} = Encode::decode("utf8", $self->{_io}->read_bytes($self->len()));
}

sub len {
    my ($self) = @_;
    return $self->{len};
}

sub content {
    my ($self) = @_;
    return $self->{content};
}

########################################################################
package Tc::CircuitPath;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{start} = Tc::Point->new($self->{_io}, $self, $self->{_root});
    $self->{body} = ();
    do {
        $_ = Tc::CircuitSegment->new($self->{_io}, $self, $self->{_root});
        push @{$self->{body}}, $_;
    } until ($_->length() == 0);
}

sub start {
    my ($self) = @_;
    return $self->{start};
}

sub body {
    my ($self) = @_;
    return $self->{body};
}

########################################################################
package Tc::CircuitSegment;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{direction} = $self->{_io}->read_bits_int_be(3);
    $self->{length} = $self->{_io}->read_bits_int_be(5);
}

sub direction {
    my ($self) = @_;
    return $self->{direction};
}

sub length {
    my ($self) = @_;
    return $self->{length};
}

########################################################################
package Tc::Circuit;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{permanent_id} = $self->{_io}->read_u8le();
    $self->{kind} = $self->{_io}->read_u1();
    $self->{color} = $self->{_io}->read_u1();
    $self->{comment} = Tc::String->new($self->{_io}, $self, $self->{_root});
    $self->{path} = Tc::CircuitPath->new($self->{_io}, $self, $self->{_root});
}

sub permanent_id {
    my ($self) = @_;
    return $self->{permanent_id};
}

sub kind {
    my ($self) = @_;
    return $self->{kind};
}

sub color {
    my ($self) = @_;
    return $self->{color};
}

sub comment {
    my ($self) = @_;
    return $self->{comment};
}

sub path {
    my ($self) = @_;
    return $self->{path};
}

########################################################################
package Tc::Component;

our @ISA = 'IO::KaitaiStruct::Struct';

sub from_file {
    my ($class, $filename) = @_;
    my $fd;

    open($fd, '<', $filename) or return undef;
    binmode($fd);
    return new($class, IO::KaitaiStruct::Stream->new($fd));
}

sub new {
    my ($class, $_io, $_parent, $_root) = @_;
    my $self = IO::KaitaiStruct::Struct->new($_io);

    bless $self, $class;
    $self->{_parent} = $_parent;
    $self->{_root} = $_root || $self;;

    $self->_read();

    return $self;
}

sub _read {
    my ($self) = @_;

    $self->{kind} = $self->{_io}->read_u2le();
    $self->{position} = Tc::Point->new($self->{_io}, $self, $self->{_root});
    $self->{rotation} = $self->{_io}->read_u1();
    $self->{permanent_id} = $self->{_io}->read_u8le();
    $self->{custom_string} = Tc::String->new($self->{_io}, $self, $self->{_root});
    if ( (( (($self->kind() > 63) && ($self->kind() < 69)) ) || ($self->kind() == 94)) ) {
        $self->{program_name} = Tc::String->new($self->{_io}, $self, $self->{_root});
    }
    if ($self->kind() == 92) {
        $self->{custom_id} = $self->{_io}->read_u8le();
    }
}

sub kind {
    my ($self) = @_;
    return $self->{kind};
}

sub position {
    my ($self) = @_;
    return $self->{position};
}

sub rotation {
    my ($self) = @_;
    return $self->{rotation};
}

sub permanent_id {
    my ($self) = @_;
    return $self->{permanent_id};
}

sub custom_string {
    my ($self) = @_;
    return $self->{custom_string};
}

sub program_name {
    my ($self) = @_;
    return $self->{program_name};
}

sub custom_id {
    my ($self) = @_;
    return $self->{custom_id};
}

1;
