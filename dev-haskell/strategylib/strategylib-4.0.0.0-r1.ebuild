# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

MY_PN="StrategyLib"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="attempt to convert Strafunski's StrategyLib to a heirarchical library"
HOMEPAGE="http://naesten.dyndns.org:8080/repos/StrategyLib"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="freedist" # well, the link license points to is 404
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0"

S="${WORKDIR}/${MY_P}"

src_prepare() {
	epatch "${FILESDIR}"/${P}-base-4.patch

	CABAL_FILE=${MY_PN}.cabal cabal_chdeps \
		'base' 'base, directory, syb'
}
