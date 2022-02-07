if (WITH_GHOSTRIDER)
    add_definitions(/DXMRIG_ALGO_GHOSTRIDER)
    add_subdirectory(src/crypto/ghostrider)
    set(GHOSTRIDER_LIBRARY ghostrider)
else()
    message(STATUS "WITH_GHOSTRIDER=OFF ... GhostRider algorithm disabled")
    remove_definitions(/DXMRIG_ALGO_GHOSTRIDER)
    set(GHOSTRIDER_LIBRARY "")
endif()
