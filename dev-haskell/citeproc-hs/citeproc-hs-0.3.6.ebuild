# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A Citation Style Language implementation in Haskell"
HOMEPAGE="http://gorgias.mine.nu/repos/citeproc-hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+bibutils hexpat +network"

RDEPEND="dev-haskell/json:=[generic,profile?]
		dev-haskell/mtl:=[profile?]
		>=dev-haskell/pandoc-types-1.8:=[profile?]
		<dev-haskell/pandoc-types-1.11:=[profile?]
		dev-haskell/parsec:=[profile?]
		dev-haskell/syb:=[profile?]
		dev-haskell/utf8-string:=[profile?]
		!hexpat? ( dev-haskell/xml:=[profile?] )
		hexpat? ( >=dev-haskell/hexpat-0.20.2:=[profile?] )
		>=dev-lang/ghc-6.10.4:=
		bibutils? ( >=dev-haskell/hs-bibutils-0.3:=[profile?] )
		network? (
			>=dev-haskell/http-4000.0.9:=[profile?]
			>=dev-haskell/network-2:=[profile?]
		)
		"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"
