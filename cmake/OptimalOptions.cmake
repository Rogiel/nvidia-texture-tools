
# Set optimal options for gcc:
#if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
#	SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -march=native")
#	SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fPIC")
#ENDIF()

IF(MSVC)
	# Code generation flags.
#	SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} /arch:SSE2 /fp:fast")
#	SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /arch:SSE2 /fp:fast")

	# Optimization flags.
	SET(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS} /O2 /Ob2 /Oi /Ot /Oy /GL")
	SET(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS} /O2 /Ob2 /Oi /Ot /Oy /GL")
	SET(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_EXE_LINKER_FLAGS_RELEASE} /LTCG")
	SET(CMAKE_SHARED_LINKER_FLAGS_RELEASE "${CMAKE_SHARED_LINKER_FLAGS_RELEASE} /LTCG")
	SET(CMAKE_MODULE_LINKER_FLAGS_RELEASE "${CMAKE_MODULE_LINKER_FLAGS_RELEASE} /LTCG")

	# Definitions.
	ADD_DEFINITIONS(-D__SSE2__ -D__SSE__ -D__MMX__)
ENDIF(MSVC)
