from libc.stdint cimport *

cdef extern from "chpltypes.h":
	ctypedef void* c_fn_ptr

cdef extern from "chpl-init.h":
	void chpl_library_init(int argc, char* argv[])
	void chpl_library_finalize()

cdef extern from "chpl-external-array.h":
	ctypedef struct chpl_external_array:
		void* elts
		uint64_t num_elts

	chpl_external_array chpl_make_external_array(uint64_t elt_size, uint64_t num_elts)
	chpl_external_array chpl_make_external_array_ptr(void* elts, uint64_t num_elts)
	void chpl_free_external_array(chpl_external_array x)

	ctypedef struct chpl_opaque_array:
		int64_t _pid
		void* _instance
		bint _unowned

	void cleanupOpaqueArray(chpl_opaque_array* arr)
