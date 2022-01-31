// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "tc.h"
#include "kaitai/exceptions.h"

tc_t::tc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_dependecies = nullptr;
    m_description = nullptr;
    m_camera_position = nullptr;
    m_components = nullptr;
    m_circuits = nullptr;
    _read();
}

void tc_t::_read() {
    m_magic = m__io->read_bytes(1);
    if (!(magic() == std::string("\x01", 1))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x01", 1), magic(), _io(), std::string("/seq/0"));
    }
    m_save_version = m__io->read_s8le();
    m_nand = m__io->read_u4le();
    m_delay = m__io->read_u4le();
    m_custom_visible = m__io->read_u1();
    m_clock_speed = m__io->read_u4le();
    m_nesting_level = m__io->read_u1();
    m_dependcy_count = m__io->read_u8le();
    int l_dependecies = dependcy_count();
    m_dependecies = std::unique_ptr<std::vector<uint64_t>>(new std::vector<uint64_t>());
    m_dependecies->reserve(l_dependecies);
    for (int i = 0; i < l_dependecies; i++) {
        m_dependecies->push_back(std::move(m__io->read_u8le()));
    }
    m_description = std::unique_ptr<string_t>(new string_t(m__io, this, m__root));
    m_unpacked = m__io->read_u1();
    m_camera_position = std::unique_ptr<point_t>(new point_t(m__io, this, m__root));
    m_cached_design = m__io->read_u1();
    m_component_count = m__io->read_u8le();
    int l_components = component_count();
    m_components = std::unique_ptr<std::vector<std::unique_ptr<component_t>>>(new std::vector<std::unique_ptr<component_t>>());
    m_components->reserve(l_components);
    for (int i = 0; i < l_components; i++) {
        m_components->push_back(std::move(std::unique_ptr<component_t>(new component_t(m__io, this, m__root))));
    }
    m_circuit_count = m__io->read_u8le();
    int l_circuits = circuit_count();
    m_circuits = std::unique_ptr<std::vector<std::unique_ptr<circuit_t>>>(new std::vector<std::unique_ptr<circuit_t>>());
    m_circuits->reserve(l_circuits);
    for (int i = 0; i < l_circuits; i++) {
        m_circuits->push_back(std::move(std::unique_ptr<circuit_t>(new circuit_t(m__io, this, m__root))));
    }
}

tc_t::~tc_t() {
    _clean_up();
}

void tc_t::_clean_up() {
}

tc_t::point_t::point_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void tc_t::point_t::_read() {
    m_x = m__io->read_s2le();
    m_y = m__io->read_s2le();
}

tc_t::point_t::~point_t() {
    _clean_up();
}

void tc_t::point_t::_clean_up() {
}

tc_t::string_t::string_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void tc_t::string_t::_read() {
    m_len = m__io->read_u8le();
    m_content = kaitai::kstream::bytes_to_str(m__io->read_bytes(len()), std::string("utf8"));
}

tc_t::string_t::~string_t() {
    _clean_up();
}

void tc_t::string_t::_clean_up() {
}

tc_t::circuit_path_t::circuit_path_t(kaitai::kstream* p__io, tc_t::circuit_t* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_start = nullptr;
    m_body = nullptr;
    m_end = nullptr;
    _read();
}

void tc_t::circuit_path_t::_read() {
    m_start = std::unique_ptr<point_t>(new point_t(m__io, this, m__root));
    m_body = std::unique_ptr<std::vector<std::unique_ptr<circuit_segment_t>>>(new std::vector<std::unique_ptr<circuit_segment_t>>());
    {
        int i = 0;
        circuit_segment_t* _;
        do {
            _ = new circuit_segment_t(m__io, this, m__root);
            m_body->push_back(std::move(std::unique_ptr<circuit_segment_t>(_)));
            i++;
        } while (!(_->length() == 0));
    }
    n_end = true;
    if ( ((body()->back()->direction() == 1) && (body()->back()->length() == 0)) ) {
        n_end = false;
        m_end = std::unique_ptr<point_t>(new point_t(m__io, this, m__root));
    }
}

tc_t::circuit_path_t::~circuit_path_t() {
    _clean_up();
}

void tc_t::circuit_path_t::_clean_up() {
    if (!n_end) {
    }
}

tc_t::circuit_segment_t::circuit_segment_t(kaitai::kstream* p__io, tc_t::circuit_path_t* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    _read();
}

void tc_t::circuit_segment_t::_read() {
    m_direction = m__io->read_bits_int_be(3);
    m_length = m__io->read_bits_int_be(5);
}

tc_t::circuit_segment_t::~circuit_segment_t() {
    _clean_up();
}

void tc_t::circuit_segment_t::_clean_up() {
}

tc_t::circuit_t::circuit_t(kaitai::kstream* p__io, tc_t* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_comment = nullptr;
    m_path = nullptr;
    _read();
}

void tc_t::circuit_t::_read() {
    m_permanent_id = m__io->read_u8le();
    m_kind = static_cast<tc_t::circuit_kind_t>(m__io->read_u1());
    m_color = m__io->read_u1();
    m_comment = std::unique_ptr<string_t>(new string_t(m__io, this, m__root));
    m_path = std::unique_ptr<circuit_path_t>(new circuit_path_t(m__io, this, m__root));
}

tc_t::circuit_t::~circuit_t() {
    _clean_up();
}

void tc_t::circuit_t::_clean_up() {
}

tc_t::component_t::component_t(kaitai::kstream* p__io, tc_t* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_position = nullptr;
    m_custom_string = nullptr;
    m_program_name = nullptr;
    _read();
}

void tc_t::component_t::_read() {
    m_kind = static_cast<tc_t::component_kind_t>(m__io->read_u2le());
    m_position = std::unique_ptr<point_t>(new point_t(m__io, this, m__root));
    m_rotation = m__io->read_u1();
    m_permanent_id = m__io->read_u8le();
    m_custom_string = std::unique_ptr<string_t>(new string_t(m__io, this, m__root));
    n_program_name = true;
    if ( (( ((kind() > 63) && (kind() < 69)) ) || (kind() == 94)) ) {
        n_program_name = false;
        m_program_name = std::unique_ptr<string_t>(new string_t(m__io, this, m__root));
    }
    n_custom_id = true;
    if (kind() == 92) {
        n_custom_id = false;
        m_custom_id = m__io->read_u8le();
    }
}

tc_t::component_t::~component_t() {
    _clean_up();
}

void tc_t::component_t::_clean_up() {
    if (!n_program_name) {
    }
    if (!n_custom_id) {
    }
}
