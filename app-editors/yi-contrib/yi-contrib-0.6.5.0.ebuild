# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour"
inherit base haskell-cabal

DESCRIPTION="Add-ons to Yi, the Haskell-Scriptable Editor"
HOMEPAGE="http://haskell.org/haskellwiki/Yi"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="=dev-haskell/data-accessor-0.2*
		=dev-haskell/split-0.1*
		~app-editors/yi-0.6.5.0
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	base_src_prepare
	if has_version "<dev-lang/ghc-7.0.1"; then
		epatch "${FILESDIR}/${P}-backport-to-ghc-6.12.3.patch"
	fi
}