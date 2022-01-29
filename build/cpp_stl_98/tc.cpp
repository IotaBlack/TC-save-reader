// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

#include "tc.h"
#include "kaitai/exceptions.h"

tc_t::tc_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = this;
    m_dependecies = 0;
    m_description = 0;
    m_components = 0;
    m_circuits = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void tc_t::_read() {
    m_magic = m__io->read_bytes(1);
    if (!(magic() == std::string("\x00", 1))) {
        throw kaitai::validation_not_equal_error<std::string>(std::string("\x00", 1), magic(), _io(), std::string("/seq/0"));
    }
    m_save_version = m__io->read_s8le();
    m_nand = m__io->read_u4le();
    m_delay = m__io->read_u4le();
    m_custom_visible = m__io->read_u1();
    m_clock_speed = m__io->read_u4le();
    m_scale_level = m__io->read_u1();
    m_dependcy_count = m__io->read_u8le();
    int l_dependecies = dependcy_count();
    m_dependecies = new std::vector<uint64_t>();
    m_dependecies->reserve(l_dependecies);
    for (int i = 0; i < l_dependecies; i++) {
        m_dependecies->push_back(m__io->read_u8le());
    }
    m_description = new string_t(m__io, this, m__root);
    m_component_count = m__io->read_u8le();
    int l_components = component_count();
    m_components = new std::vector<component_t*>();
    m_components->reserve(l_components);
    for (int i = 0; i < l_components; i++) {
        m_components->push_back(new component_t(m__io, this, m__root));
    }
    m_circuit_count = m__io->read_u8le();
    int l_circuits = circuit_count();
    m_circuits = new std::vector<circuit_t*>();
    m_circuits->reserve(l_circuits);
    for (int i = 0; i < l_circuits; i++) {
        m_circuits->push_back(new circuit_t(m__io, this, m__root));
    }
}

tc_t::~tc_t() {
    _clean_up();
}

void tc_t::_clean_up() {
    if (m_dependecies) {
        delete m_dependecies; m_dependecies = 0;
    }
    if (m_description) {
        delete m_description; m_description = 0;
    }
    if (m_components) {
        for (std::vector<component_t*>::iterator it = m_components->begin(); it != m_components->end(); ++it) {
            delete *it;
        }
        delete m_components; m_components = 0;
    }
    if (m_circuits) {
        for (std::vector<circuit_t*>::iterator it = m_circuits->begin(); it != m_circuits->end(); ++it) {
            delete *it;
        }
        delete m_circuits; m_circuits = 0;
    }
}

tc_t::string_t::string_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
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

tc_t::point_t::point_t(kaitai::kstream* p__io, kaitai::kstruct* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void tc_t::point_t::_read() {
    m_x = m__io->read_s1();
    m_y = m__io->read_s1();
}

tc_t::point_t::~point_t() {
    _clean_up();
}

void tc_t::point_t::_clean_up() {
}

tc_t::component_t::component_t(kaitai::kstream* p__io, tc_t* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_position = 0;
    m_custom_string = 0;
    m_program_name = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void tc_t::component_t::_read() {
    m_kind = static_cast<tc_t::component_kind_t>(m__io->read_u2le());
    m_position = new point_t(m__io, this, m__root);
    m_rotation = m__io->read_u1();
    m_permanent_id = m__io->read_u4le();
    m_custom_string = new string_t(m__io, this, m__root);
    n_program_name = true;
    if ( (( ((kind() > 63) && (kind() < 69)) ) || (kind() == 94)) ) {
        n_program_name = false;
        m_program_name = new string_t(m__io, this, m__root);
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
    if (m_position) {
        delete m_position; m_position = 0;
    }
    if (m_custom_string) {
        delete m_custom_string; m_custom_string = 0;
    }
    if (!n_program_name) {
        if (m_program_name) {
            delete m_program_name; m_program_name = 0;
        }
    }
    if (!n_custom_id) {
    }
}

tc_t::circuit_t::circuit_t(kaitai::kstream* p__io, tc_t* p__parent, tc_t* p__root) : kaitai::kstruct(p__io) {
    m__parent = p__parent;
    m__root = p__root;
    m_comment = 0;
    m_path = 0;

    try {
        _read();
    } catch(...) {
        _clean_up();
        throw;
    }
}

void tc_t::circuit_t::_read() {
    m_permanent_id = m__io->read_u4le();
    m_kind = static_cast<tc_t::circuit_kind_t>(m__io->read_u1());
    m_color = m__io->read_u1();
    m_comment = new string_t(m__io, this, m__root);
    m_path_length = m__io->read_u8le();
    int l_path = path_length();
    m_path = new std::vector<point_t*>();
    m_path->reserve(l_path);
    for (int i = 0; i < l_path; i++) {
        m_path->push_back(new point_t(m__io, this, m__root));
    }
}

tc_t::circuit_t::~circuit_t() {
    _clean_up();
}

void tc_t::circuit_t::_clean_up() {
    if (m_comment) {
        delete m_comment; m_comment = 0;
    }
    if (m_path) {
        for (std::vector<point_t*>::iterator it = m_path->begin(); it != m_path->end(); ++it) {
            delete *it;
        }
        delete m_path; m_path = 0;
    }
}
