# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.13

EAPI="4"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit base haskell-cabal

MY_PN="JSONb"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="JSON parser that uses byte strings."
HOMEPAGE="http://github.com/solidsnack/JSONb/"
SRC_URI="http://hackage.haskell.org/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.10
		>=dev-haskell/bytestring-nums-0.3.1
		>=dev-haskell/bytestring-trie-0.1.4
		>=dev-haskell/utf8-string-0.3
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"

S="${WORKDIR}/${MY_P}"

PATCHES=("${FILESDIR}/${MY_PN}-1.0.7-attoparsec-0.10.patch"
	"${FILESDIR}/${MY_PN}-1.0.7-ghc-7.4.patch")
