# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

# ebuild generated by hackport 0.2.17.9999

EAPI=4

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Parse source to template-haskell abstract syntax."
HOMEPAGE="http://hackage.haskell.org/package/haskell-src-meta"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/haskell-src-exts-1.8[profile?] <dev-haskell/haskell-src-exts-1.14[profile?]
		>=dev-haskell/syb-0.1[profile?] <dev-haskell/syb-0.4[profile?]
		=dev-haskell/th-lift-0.5*[profile?]
		>=dev-haskell/uniplate-1.3[profile?] <dev-haskell/uniplate-1.7[profile?]
		>=dev-lang/ghc-6.12.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}/${PN}-0.5.1.2-ghc-7.5.patch")
