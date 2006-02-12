IF (WIN32)

INCLUDE(MacroGetenvWinPath)

MACRO_GETENV_WIN_PATH(_progFiles PROGRAMFILES)

FIND_FILE(GNUWIN32_DIR GNUWIN32
   ${_progFiles}
   "C:/"
)

IF(GNUWIN32_DIRECTORY)
   SET(GNUWIN32_INCLUDE_DIR ${GNUWIN32_DIR}/include)
   SET(GNUWIN32_LIBRARY_DIR ${GNUWIN32_DIR}/lib)
   SET(GNUWIN32_BINARY_DIR  ${GNUWIN32_DIR}/bin)
   SET(GNUWIN32_FOUND TRUE)
ELSE(GNUWIN32_DIRECTORY)
   SET(GNUWIN32_FOUND)
ENDIF(GNUWIN32_DIRECTORY)

IF(GNUWIN32_FOUND)
  IF(NOT GNUWIN32_FIND_QUIETLY)
    MESSAGE(STATUS "Found GNUWIN32: ${GNUWIN32_DIR}")
  ENDIF(NOT GNUWIN32_FIND_QUIETLY)
ELSE(GNUWIN32_FOUND)
  IF(GNUWIN32_FIND_REQUIRED)
    MESSAGE(SEND_ERROR "Could not find GNUWIN32")
  ENDIF(GNUWIN32_FIND_REQUIRED)
ENDIF(GNUWIN32_FOUND)

ENDIF (WIN32)

