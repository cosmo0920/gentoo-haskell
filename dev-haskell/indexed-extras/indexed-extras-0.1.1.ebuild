# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Indexed functors, monads and comonads that require extensions to Haskell98"
HOMEPAGE="https://github.com/reinerp/indexed-extras"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="<dev-haskell/bifunctors-3.1[profile?]
		<dev-haskell/indexed-0.2[profile?]
		<dev-haskell/mtl-2.2[profile?]
		<dev-haskell/pointed-3.1[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@bifunctors < 0.2@bifunctors < 3.1@' \
		-e 's@pointed < 2.2@pointed < 3.1@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen dependencies"
}