// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
)


type Tc_CircuitKind int
const (
	Tc_CircuitKind__CkBit Tc_CircuitKind = 0
	Tc_CircuitKind__CkByte Tc_CircuitKind = 1
	Tc_CircuitKind__CkQword Tc_CircuitKind = 2
)

type Tc_ComponentKind int
const (
	Tc_ComponentKind__Error Tc_ComponentKind = 0
	Tc_ComponentKind__False Tc_ComponentKind = 1
	Tc_ComponentKind__True Tc_ComponentKind = 2
	Tc_ComponentKind__Buffer Tc_ComponentKind = 3
	Tc_ComponentKind__Not Tc_ComponentKind = 4
	Tc_ComponentKind__And Tc_ComponentKind = 5
	Tc_ComponentKind__And3 Tc_ComponentKind = 6
	Tc_ComponentKind__Nand Tc_ComponentKind = 7
	Tc_ComponentKind__Or Tc_ComponentKind = 8
	Tc_ComponentKind__Or3 Tc_ComponentKind = 9
	Tc_ComponentKind__Nor Tc_ComponentKind = 10
	Tc_ComponentKind__Xor Tc_ComponentKind = 11
	Tc_ComponentKind__Xnor Tc_ComponentKind = 12
	Tc_ComponentKind__Bytecounter Tc_ComponentKind = 13
	Tc_ComponentKind__Virtualbytecounter Tc_ComponentKind = 14
	Tc_ComponentKind__Qwordcounter Tc_ComponentKind = 15
	Tc_ComponentKind__Virtualqwordcounter Tc_ComponentKind = 16
	Tc_ComponentKind__Ram Tc_ComponentKind = 17
	Tc_ComponentKind__Virtualram Tc_ComponentKind = 18
	Tc_ComponentKind__Qwordram Tc_ComponentKind = 19
	Tc_ComponentKind__Virtualqwordram Tc_ComponentKind = 20
	Tc_ComponentKind__Stack Tc_ComponentKind = 21
	Tc_ComponentKind__Virtualstack Tc_ComponentKind = 22
	Tc_ComponentKind__Register Tc_ComponentKind = 23
	Tc_ComponentKind__Virtualregister Tc_ComponentKind = 24
	Tc_ComponentKind__Registerred Tc_ComponentKind = 25
	Tc_ComponentKind__Virtualregisterred Tc_ComponentKind = 26
	Tc_ComponentKind__Registerredplus Tc_ComponentKind = 27
	Tc_ComponentKind__Virtualregisterredplus Tc_ComponentKind = 28
	Tc_ComponentKind__Qwordregister Tc_ComponentKind = 29
	Tc_ComponentKind__Virtualqwordregister Tc_ComponentKind = 30
	Tc_ComponentKind__Byteswitch Tc_ComponentKind = 31
	Tc_ComponentKind__Bytemux Tc_ComponentKind = 32
	Tc_ComponentKind__Decoder1 Tc_ComponentKind = 33
	Tc_ComponentKind__Decoder3 Tc_ComponentKind = 34
	Tc_ComponentKind__Byteconstant Tc_ComponentKind = 35
	Tc_ComponentKind__Bytenot Tc_ComponentKind = 36
	Tc_ComponentKind__Byteor Tc_ComponentKind = 37
	Tc_ComponentKind__Byteand Tc_ComponentKind = 38
	Tc_ComponentKind__Bytexor Tc_ComponentKind = 39
	Tc_ComponentKind__Byteequal Tc_ComponentKind = 40
	Tc_ComponentKind__Bytelessu Tc_ComponentKind = 41
	Tc_ComponentKind__Bytelessi Tc_ComponentKind = 42
	Tc_ComponentKind__Byteneg Tc_ComponentKind = 43
	Tc_ComponentKind__Byteadd Tc_ComponentKind = 44
	Tc_ComponentKind__Bytemul Tc_ComponentKind = 45
	Tc_ComponentKind__Bytesplitter Tc_ComponentKind = 46
	Tc_ComponentKind__Bytemaker Tc_ComponentKind = 47
	Tc_ComponentKind__Qwordsplitter Tc_ComponentKind = 48
	Tc_ComponentKind__Qwordmaker Tc_ComponentKind = 49
	Tc_ComponentKind__Fulladder Tc_ComponentKind = 50
	Tc_ComponentKind__Bitmemory Tc_ComponentKind = 51
	Tc_ComponentKind__Virtualbitmemory Tc_ComponentKind = 52
	Tc_ComponentKind__Srlatch Tc_ComponentKind = 53
	Tc_ComponentKind__Random Tc_ComponentKind = 54
	Tc_ComponentKind__Clock Tc_ComponentKind = 55
	Tc_ComponentKind__Waveformgenerator Tc_ComponentKind = 56
	Tc_ComponentKind__Httpclient Tc_ComponentKind = 57
	Tc_ComponentKind__Asciiscreen Tc_ComponentKind = 58
	Tc_ComponentKind__Keypad Tc_ComponentKind = 59
	Tc_ComponentKind__Filerom Tc_ComponentKind = 60
	Tc_ComponentKind__Halt Tc_ComponentKind = 61
	Tc_ComponentKind__Circuitcluster Tc_ComponentKind = 62
	Tc_ComponentKind__Screen Tc_ComponentKind = 63
	Tc_ComponentKind__Program1 Tc_ComponentKind = 64
	Tc_ComponentKind__Program1red Tc_ComponentKind = 65
	Tc_ComponentKind__Program2 Tc_ComponentKind = 66
	Tc_ComponentKind__Program3 Tc_ComponentKind = 67
	Tc_ComponentKind__Program4 Tc_ComponentKind = 68
	Tc_ComponentKind__Levelgate Tc_ComponentKind = 69
	Tc_ComponentKind__Input1 Tc_ComponentKind = 70
	Tc_ComponentKind__Input2 Tc_ComponentKind = 71
	Tc_ComponentKind__Input3 Tc_ComponentKind = 72
	Tc_ComponentKind__Input4 Tc_ComponentKind = 73
	Tc_ComponentKind__Input1bconditions Tc_ComponentKind = 74
	Tc_ComponentKind__Input1b Tc_ComponentKind = 75
	Tc_ComponentKind__Inputqword Tc_ComponentKind = 76
	Tc_ComponentKind__Input1bcode Tc_ComponentKind = 77
	Tc_ComponentKind__Input11b Tc_ComponentKind = 78
	Tc_ComponentKind__Output1 Tc_ComponentKind = 79
	Tc_ComponentKind__Output1sum Tc_ComponentKind = 80
	Tc_ComponentKind__Output1car Tc_ComponentKind = 81
	Tc_ComponentKind__Output1aval Tc_ComponentKind = 82
	Tc_ComponentKind__Output1bval Tc_ComponentKind = 83
	Tc_ComponentKind__Output2 Tc_ComponentKind = 84
	Tc_ComponentKind__Output3 Tc_ComponentKind = 85
	Tc_ComponentKind__Output4 Tc_ComponentKind = 86
	Tc_ComponentKind__Output1b Tc_ComponentKind = 87
	Tc_ComponentKind__Outputqword Tc_ComponentKind = 88
	Tc_ComponentKind__Output11b Tc_ComponentKind = 89
	Tc_ComponentKind__Outputcounter Tc_ComponentKind = 90
	Tc_ComponentKind__Inputoutput Tc_ComponentKind = 91
	Tc_ComponentKind__Custom Tc_ComponentKind = 92
	Tc_ComponentKind__Virtualcustom Tc_ComponentKind = 93
	Tc_ComponentKind__Qwordprogram Tc_ComponentKind = 94
	Tc_ComponentKind__Delaybuffer Tc_ComponentKind = 95
	Tc_ComponentKind__Virtualdelaybuffer Tc_ComponentKind = 96
	Tc_ComponentKind__Console Tc_ComponentKind = 97
	Tc_ComponentKind__Byteshl Tc_ComponentKind = 98
	Tc_ComponentKind__Byteshr Tc_ComponentKind = 99
	Tc_ComponentKind__Qwordconstant Tc_ComponentKind = 100
	Tc_ComponentKind__Qwordnot Tc_ComponentKind = 101
	Tc_ComponentKind__Qwordor Tc_ComponentKind = 102
	Tc_ComponentKind__Qwordand Tc_ComponentKind = 103
	Tc_ComponentKind__Qwordxor Tc_ComponentKind = 104
	Tc_ComponentKind__Qwordneg Tc_ComponentKind = 105
	Tc_ComponentKind__Qwordadd Tc_ComponentKind = 106
	Tc_ComponentKind__Qwordmul Tc_ComponentKind = 107
	Tc_ComponentKind__Qwordequal Tc_ComponentKind = 108
	Tc_ComponentKind__Qwordlessu Tc_ComponentKind = 109
	Tc_ComponentKind__Qwordlessi Tc_ComponentKind = 110
	Tc_ComponentKind__Qwordshl Tc_ComponentKind = 111
	Tc_ComponentKind__Qwordshr Tc_ComponentKind = 112
	Tc_ComponentKind__Qwordmux Tc_ComponentKind = 113
	Tc_ComponentKind__Qwordswitch Tc_ComponentKind = 114
	Tc_ComponentKind__Statebit Tc_ComponentKind = 115
	Tc_ComponentKind__Statebyte Tc_ComponentKind = 116
)
type Tc struct {
	Magic []byte
	SaveVersion int64
	Nand uint32
	Delay uint32
	CustomVisible uint8
	ClockSpeed uint32
	NestingLevel uint8
	DependcyCount uint64
	Dependecies []uint64
	Description *Tc_String
	Unpacked uint8
	CameraPosition *Tc_Point
	CachedDesign uint8
	ComponentCount uint64
	Components []*Tc_Component
	CircuitCount uint64
	Circuits []*Tc_Circuit
	_io *kaitai.Stream
	_root *Tc
	_parent interface{}
}
func NewTc() *Tc {
	return &Tc{
	}
}

func (this *Tc) Read(io *kaitai.Stream, parent interface{}, root *Tc) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(1))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Magic = tmp1
	if !(bytes.Equal(this.Magic, []uint8{1})) {
		return kaitai.NewValidationNotEqualError([]uint8{1}, this.Magic, this._io, "/seq/0")
	}
	tmp2, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.SaveVersion = int64(tmp2)
	tmp3, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Nand = uint32(tmp3)
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Delay = uint32(tmp4)
	tmp5, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.CustomVisible = tmp5
	tmp6, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.ClockSpeed = uint32(tmp6)
	tmp7, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.NestingLevel = tmp7
	tmp8, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.DependcyCount = uint64(tmp8)
	this.Dependecies = make([]uint64, this.DependcyCount)
	for i := range this.Dependecies {
		tmp9, err := this._io.ReadU8le()
		if err != nil {
			return err
		}
		this.Dependecies[i] = tmp9
	}
	tmp10 := NewTc_String()
	err = tmp10.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Description = tmp10
	tmp11, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Unpacked = tmp11
	tmp12 := NewTc_Point()
	err = tmp12.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.CameraPosition = tmp12
	tmp13, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.CachedDesign = tmp13
	tmp14, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.ComponentCount = uint64(tmp14)
	this.Components = make([]*Tc_Component, this.ComponentCount)
	for i := range this.Components {
		tmp15 := NewTc_Component()
		err = tmp15.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Components[i] = tmp15
	}
	tmp16, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.CircuitCount = uint64(tmp16)
	this.Circuits = make([]*Tc_Circuit, this.CircuitCount)
	for i := range this.Circuits {
		tmp17 := NewTc_Circuit()
		err = tmp17.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Circuits[i] = tmp17
	}
	return err
}
type Tc_Point struct {
	X int16
	Y int16
	_io *kaitai.Stream
	_root *Tc
	_parent interface{}
}
func NewTc_Point() *Tc_Point {
	return &Tc_Point{
	}
}

func (this *Tc_Point) Read(io *kaitai.Stream, parent interface{}, root *Tc) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp18, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.X = int16(tmp18)
	tmp19, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Y = int16(tmp19)
	return err
}
type Tc_String struct {
	Len uint64
	Content string
	_io *kaitai.Stream
	_root *Tc
	_parent interface{}
}
func NewTc_String() *Tc_String {
	return &Tc_String{
	}
}

func (this *Tc_String) Read(io *kaitai.Stream, parent interface{}, root *Tc) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp20, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.Len = uint64(tmp20)
	tmp21, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
	tmp21 = tmp21
	this.Content = string(tmp21)
	return err
}
type Tc_CircuitPath struct {
	Start *Tc_Point
	Body []*Tc_CircuitSegment
	_io *kaitai.Stream
	_root *Tc
	_parent *Tc_Circuit
}
func NewTc_CircuitPath() *Tc_CircuitPath {
	return &Tc_CircuitPath{
	}
}

func (this *Tc_CircuitPath) Read(io *kaitai.Stream, parent *Tc_Circuit, root *Tc) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp22 := NewTc_Point()
	err = tmp22.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Start = tmp22
	for i := 1;; i++ {
		tmp23 := NewTc_CircuitSegment()
		err = tmp23.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		_it := tmp23
		this.Body = append(this.Body, _it)
		if _it.Length == 0 {
			break
		}
	}
	return err
}
type Tc_CircuitSegment struct {
	Direction uint64
	Length uint64
	_io *kaitai.Stream
	_root *Tc
	_parent *Tc_CircuitPath
}
func NewTc_CircuitSegment() *Tc_CircuitSegment {
	return &Tc_CircuitSegment{
	}
}

func (this *Tc_CircuitSegment) Read(io *kaitai.Stream, parent *Tc_CircuitPath, root *Tc) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp24, err := this._io.ReadBitsIntBe(3)
	if err != nil {
		return err
	}
	this.Direction = tmp24
	tmp25, err := this._io.ReadBitsIntBe(5)
	if err != nil {
		return err
	}
	this.Length = tmp25
	return err
}
type Tc_Circuit struct {
	PermanentId uint64
	Kind Tc_CircuitKind
	Color uint8
	Comment *Tc_String
	Path *Tc_CircuitPath
	_io *kaitai.Stream
	_root *Tc
	_parent *Tc
}
func NewTc_Circuit() *Tc_Circuit {
	return &Tc_Circuit{
	}
}

func (this *Tc_Circuit) Read(io *kaitai.Stream, parent *Tc, root *Tc) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp26, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.PermanentId = uint64(tmp26)
	tmp27, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Kind = Tc_CircuitKind(tmp27)
	tmp28, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Color = tmp28
	tmp29 := NewTc_String()
	err = tmp29.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Comment = tmp29
	tmp30 := NewTc_CircuitPath()
	err = tmp30.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Path = tmp30
	return err
}
type Tc_Component struct {
	Kind Tc_ComponentKind
	Position *Tc_Point
	Rotation uint8
	PermanentId uint64
	CustomString *Tc_String
	ProgramName *Tc_String
	CustomId uint64
	_io *kaitai.Stream
	_root *Tc
	_parent *Tc
}
func NewTc_Component() *Tc_Component {
	return &Tc_Component{
	}
}

func (this *Tc_Component) Read(io *kaitai.Stream, parent *Tc, root *Tc) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp31, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Kind = Tc_ComponentKind(tmp31)
	tmp32 := NewTc_Point()
	err = tmp32.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Position = tmp32
	tmp33, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Rotation = tmp33
	tmp34, err := this._io.ReadU8le()
	if err != nil {
		return err
	}
	this.PermanentId = uint64(tmp34)
	tmp35 := NewTc_String()
	err = tmp35.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.CustomString = tmp35
	if ( (( ((this.Kind > 63) && (this.Kind < 69)) ) || (this.Kind == 94)) ) {
		tmp36 := NewTc_String()
		err = tmp36.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.ProgramName = tmp36
	}
	if (this.Kind == 92) {
		tmp37, err := this._io.ReadU8le()
		if err != nil {
			return err
		}
		this.CustomId = uint64(tmp37)
	}
	return err
}
