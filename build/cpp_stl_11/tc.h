#pragma once

// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "kaitai/kaitaistruct.h"
#include <stdint.h>
#include <memory>
#include <vector>

#if KAITAI_STRUCT_VERSION < 9000L
#error "Incompatible Kaitai Struct C++/STL API: version 0.9 or later is required"
#endif

class tc_t : public kaitai::kstruct {

public:
    class string_t;
    class point_t;
    class component_t;
    class circuit_t;

    enum circuit_kind_t {
        CIRCUIT_KIND_CK_BIT = 0,
        CIRCUIT_KIND_CK_BYTE = 1,
        CIRCUIT_KIND_CK_QWORD = 2
    };

    enum component_kind_t {
        COMPONENT_KIND_ERROR = 0,
        COMPONENT_KIND_FALSE = 1,
        COMPONENT_KIND_TRUE = 2,
        COMPONENT_KIND_BUFFER = 3,
        COMPONENT_KIND_NOT = 4,
        COMPONENT_KIND_AND = 5,
        COMPONENT_KIND_AND3 = 6,
        COMPONENT_KIND_NAND = 7,
        COMPONENT_KIND_OR = 8,
        COMPONENT_KIND_OR3 = 9,
        COMPONENT_KIND_NOR = 10,
        COMPONENT_KIND_XOR = 11,
        COMPONENT_KIND_XNOR = 12,
        COMPONENT_KIND_COUNTER = 13,
        COMPONENT_KIND_VIRTUALCOUNTER = 14,
        COMPONENT_KIND_QWORDCOUNTER = 15,
        COMPONENT_KIND_VIRTUALQWORDCOUNTER = 16,
        COMPONENT_KIND_RAM = 17,
        COMPONENT_KIND_VIRTUALRAM = 18,
        COMPONENT_KIND_QWORDRAM = 19,
        COMPONENT_KIND_VIRTUALQWORDRAM = 20,
        COMPONENT_KIND_STACK = 21,
        COMPONENT_KIND_VIRTUALSTACK = 22,
        COMPONENT_KIND_REGISTER = 23,
        COMPONENT_KIND_VIRTUALREGISTER = 24,
        COMPONENT_KIND_REGISTERRED = 25,
        COMPONENT_KIND_VIRTUALREGISTERRED = 26,
        COMPONENT_KIND_REGISTERREDPLUS = 27,
        COMPONENT_KIND_VIRTUALREGISTERREDPLUS = 28,
        COMPONENT_KIND_QWORDREGISTER = 29,
        COMPONENT_KIND_VIRTUALQWORDREGISTER = 30,
        COMPONENT_KIND_BYTESWITCH = 31,
        COMPONENT_KIND_MUX = 32,
        COMPONENT_KIND_DEMUX = 33,
        COMPONENT_KIND_BIGGERDEMUX = 34,
        COMPONENT_KIND_BYTECONSTANT = 35,
        COMPONENT_KIND_BYTENOT = 36,
        COMPONENT_KIND_BYTEOR = 37,
        COMPONENT_KIND_BYTEAND = 38,
        COMPONENT_KIND_BYTEXOR = 39,
        COMPONENT_KIND_BYTEEQUAL = 40,
        COMPONENT_KIND_BYTELESSU = 41,
        COMPONENT_KIND_BYTELESSI = 42,
        COMPONENT_KIND_BYTENEG = 43,
        COMPONENT_KIND_BYTEADD2 = 44,
        COMPONENT_KIND_BYTEMUL2 = 45,
        COMPONENT_KIND_BYTESPLITTER = 46,
        COMPONENT_KIND_BYTEMAKER = 47,
        COMPONENT_KIND_QWORDSPLITTER = 48,
        COMPONENT_KIND_QWORDMAKER = 49,
        COMPONENT_KIND_FULLADDER = 50,
        COMPONENT_KIND_BITMEMORY = 51,
        COMPONENT_KIND_VIRTUALBITMEMORY = 52,
        COMPONENT_KIND_SRLATCH = 53,
        COMPONENT_KIND_RANDOM = 54,
        COMPONENT_KIND_CLOCK = 55,
        COMPONENT_KIND_WAVEFORMGENERATOR = 56,
        COMPONENT_KIND_HTTPCLIENT = 57,
        COMPONENT_KIND_ASCIISCREEN = 58,
        COMPONENT_KIND_KEYBOARD = 59,
        COMPONENT_KIND_FILEINPUT = 60,
        COMPONENT_KIND_HALT = 61,
        COMPONENT_KIND_CIRCUITCLUSTER = 62,
        COMPONENT_KIND_SCREEN = 63,
        COMPONENT_KIND_PROGRAM1 = 64,
        COMPONENT_KIND_PROGRAM1RED = 65,
        COMPONENT_KIND_PROGRAM2 = 66,
        COMPONENT_KIND_PROGRAM3 = 67,
        COMPONENT_KIND_PROGRAM4 = 68,
        COMPONENT_KIND_LEVELGATE = 69,
        COMPONENT_KIND_INPUT1 = 70,
        COMPONENT_KIND_INPUT2 = 71,
        COMPONENT_KIND_INPUT3 = 72,
        COMPONENT_KIND_INPUT4 = 73,
        COMPONENT_KIND_INPUT1BCONDITIONS = 74,
        COMPONENT_KIND_INPUT1B = 75,
        COMPONENT_KIND_INPUTQWORD = 76,
        COMPONENT_KIND_INPUT1BCODE = 77,
        COMPONENT_KIND_INPUT1_1B = 78,
        COMPONENT_KIND_OUTPUT1 = 79,
        COMPONENT_KIND_OUTPUT1SUM = 80,
        COMPONENT_KIND_OUTPUT1CAR = 81,
        COMPONENT_KIND_OUTPUT1AVAL = 82,
        COMPONENT_KIND_OUTPUT1BVAL = 83,
        COMPONENT_KIND_OUTPUT2 = 84,
        COMPONENT_KIND_OUTPUT3 = 85,
        COMPONENT_KIND_OUTPUT4 = 86,
        COMPONENT_KIND_OUTPUT1B = 87,
        COMPONENT_KIND_OUTPUTQWORD = 88,
        COMPONENT_KIND_OUTPUT1_1B = 89,
        COMPONENT_KIND_OUTPUTCOUNTER = 90,
        COMPONENT_KIND_INPUTOUTPUT = 91,
        COMPONENT_KIND_CUSTOM = 92,
        COMPONENT_KIND_VIRTUALCUSTOM = 93,
        COMPONENT_KIND_BYTELESS = 94,
        COMPONENT_KIND_BYTEADD = 95,
        COMPONENT_KIND_BYTEMUL = 96,
        COMPONENT_KIND_FLIPFLOP = 97
    };

    tc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, tc_t* p__root = nullptr);

private:
    void _read();
    void _clean_up();

public:
    ~tc_t();

    class string_t : public kaitai::kstruct {

    public:

        string_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, tc_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~string_t();

    private:
        uint64_t m_len;
        std::string m_content;
        tc_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        uint64_t len() const { return m_len; }
        std::string content() const { return m_content; }
        tc_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

    class point_t : public kaitai::kstruct {

    public:

        point_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent = nullptr, tc_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~point_t();

    private:
        int8_t m_x;
        int8_t m_y;
        tc_t* m__root;
        kaitai::kstruct* m__parent;

    public:
        int8_t x() const { return m_x; }
        int8_t y() const { return m_y; }
        tc_t* _root() const { return m__root; }
        kaitai::kstruct* _parent() const { return m__parent; }
    };

    class component_t : public kaitai::kstruct {

    public:

        component_t(kaitai::kstream* p__io, tc_t* p__parent = nullptr, tc_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~component_t();

    private:
        component_kind_t m_kind;
        std::unique_ptr<point_t> m_position;
        uint8_t m_rotation;
        uint32_t m_permanent_id;
        std::unique_ptr<string_t> m_custom_string;
        std::unique_ptr<string_t> m_program_name;
        bool n_program_name;

    public:
        bool _is_null_program_name() { program_name(); return n_program_name; };

    private:
        uint64_t m_custom_id;
        bool n_custom_id;

    public:
        bool _is_null_custom_id() { custom_id(); return n_custom_id; };

    private:
        tc_t* m__root;
        tc_t* m__parent;

    public:
        component_kind_t kind() const { return m_kind; }
        point_t* position() const { return m_position.get(); }
        uint8_t rotation() const { return m_rotation; }
        uint32_t permanent_id() const { return m_permanent_id; }
        string_t* custom_string() const { return m_custom_string.get(); }
        string_t* program_name() const { return m_program_name.get(); }
        uint64_t custom_id() const { return m_custom_id; }
        tc_t* _root() const { return m__root; }
        tc_t* _parent() const { return m__parent; }
    };

    class circuit_t : public kaitai::kstruct {

    public:

        circuit_t(kaitai::kstream* p__io, tc_t* p__parent = nullptr, tc_t* p__root = nullptr);

    private:
        void _read();
        void _clean_up();

    public:
        ~circuit_t();

    private:
        uint32_t m_permanent_id;
        circuit_kind_t m_kind;
        uint8_t m_color;
        std::unique_ptr<string_t> m_comment;
        uint64_t m_path_length;
        std::unique_ptr<std::vector<std::unique_ptr<point_t>>> m_path;
        tc_t* m__root;
        tc_t* m__parent;

    public:
        uint32_t permanent_id() const { return m_permanent_id; }
        circuit_kind_t kind() const { return m_kind; }
        uint8_t color() const { return m_color; }
        string_t* comment() const { return m_comment.get(); }
        uint64_t path_length() const { return m_path_length; }
        std::vector<std::unique_ptr<point_t>>* path() const { return m_path.get(); }
        tc_t* _root() const { return m__root; }
        tc_t* _parent() const { return m__parent; }
    };

private:
    std::string m_magic;
    int64_t m_save_version;
    uint32_t m_nand;
    uint32_t m_delay;
    uint8_t m_custom_visible;
    uint32_t m_clock_speed;
    uint8_t m_scale_level;
    uint64_t m_dependcy_count;
    std::unique_ptr<std::vector<uint64_t>> m_dependecies;
    std::unique_ptr<string_t> m_description;
    uint64_t m_component_count;
    std::unique_ptr<std::vector<std::unique_ptr<component_t>>> m_components;
    uint64_t m_circuit_count;
    std::unique_ptr<std::vector<std::unique_ptr<circuit_t>>> m_circuits;
    tc_t* m__root;
    kaitai::kstruct* m__parent;

public:
    std::string magic() const { return m_magic; }
    int64_t save_version() const { return m_save_version; }
    uint32_t nand() const { return m_nand; }
    uint32_t delay() const { return m_delay; }
    uint8_t custom_visible() const { return m_custom_visible; }
    uint32_t clock_speed() const { return m_clock_speed; }
    uint8_t scale_level() const { return m_scale_level; }
    uint64_t dependcy_count() const { return m_dependcy_count; }
    std::vector<uint64_t>* dependecies() const { return m_dependecies.get(); }
    string_t* description() const { return m_description.get(); }
    uint64_t component_count() const { return m_component_count; }
    std::vector<std::unique_ptr<component_t>>* components() const { return m_components.get(); }
    uint64_t circuit_count() const { return m_circuit_count; }
    std::vector<std::unique_ptr<circuit_t>>* circuits() const { return m_circuits.get(); }
    tc_t* _root() const { return m__root; }
    kaitai::kstruct* _parent() const { return m__parent; }
};
