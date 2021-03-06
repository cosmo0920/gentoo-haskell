# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Collection of user contributions to diagrams EDSL"
HOMEPAGE="http://projects.haskell.org/diagrams/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/colour-2.3.1:=[profile?]
		<dev-haskell/colour-2.4:=[profile?]
		>=dev-haskell/data-default-0.3:=[profile?]
		<dev-haskell/data-default-0.6:=[profile?]
		=dev-haskell/diagrams-lib-0.6*:=[profile?]
		=dev-haskell/force-layout-0.2*:=[profile?]
		>=dev-haskell/lens-3.7:=[profile?]
		<dev-haskell/lens-4:=[profile?]
		>=dev-haskell/mtl-2.0:=[profile?]
		<dev-haskell/mtl-2.2:=[profile?]
		>=dev-haskell/vector-space-0.7:=[profile?]
		<dev-haskell/vector-space-0.9:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		test? ( =dev-haskell/hunit-1.2*
			>=dev-haskell/quickcheck-2.4
			<dev-haskell/quickcheck-2.6
			>=dev-haskell/test-framework-0.4
			<dev-haskell/test-framework-0.9
			>=dev-haskell/test-framework-hunit-0.2
			<dev-haskell/test-framework-hunit-0.4
			>=dev-haskell/test-framework-quickcheck2-0.2
			<dev-haskell/test-framework-quickcheck2-0.4
		)
		>=dev-haskell/cabal-1.10"
