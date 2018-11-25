#pragma once

#ifdef USEWINSDK

#    include <Windows.h>
#    include <boost/optional.hpp>

namespace AB_NAMESPACE {

boost::optional<UINT> getWindowDpi(HWND hwnd);
void flushClipboard();

}  // namespace AB_NAMESPACE

#endif
