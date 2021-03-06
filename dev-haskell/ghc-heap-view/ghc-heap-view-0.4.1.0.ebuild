# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

# disabled profile due to cabal bug(?)
#    setup: This library cannot be built using profiling. Try invoking cabal with the --disable-library-profiling flag.
CABAL_FEATURES="lib haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Extract the heap representation of Haskell values and thunks"
HOMEPAGE="http://hackage.haskell.org/package/ghc-heap-view"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/transformers:=
		>=dev-lang/ghc-7.4.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.14"
