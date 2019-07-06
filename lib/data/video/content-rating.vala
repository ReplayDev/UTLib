/* utlib - Yet another wrapper to the YouTube Data API v3
 * Copyright (C) 2019 Nahuel Gomez Castro
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

namespace Utlib {

    public class ContentRating : Object {

        /**
         * The video's Australian Classification Board (ACB) or Australian Communications and Media Authority (ACMA)
         * rating.
         *
         * ACMA ratings are used to classify children's television programming.
         *
         * Valid values for this property are:
         *
         *  * ``acbC`` - Programs that have been given a ''C'' classification by the Australian Communications and Media Authority. These programs are intended for children (other than preschool children) who are younger than 14 years of age.
         *  * ``acbE`` - E
         *  * ``acbG`` - G
         *  * ``acbM`` - M
         *  * ``acbMa15plus`` - MA15+
         *  * ``acbP`` - Programs that have been given a ''P'' classification by the Australian Communications and Media Authority. These programs are intended for preschool children.
         *  * ``acbPg`` - PG
         *  * ``acbR18plus`` - R18+
         *  * ``acbUnrated``
         */
        public string? acb_rating { get; }

        /**
         * The video's rating from Italy's Autorità per le Garanzie nelle Comunicazioni (AGCOM).
         *
         * Valid values for this property are:
         *
         *  * ``agcomT`` - T
         *  * ``agcomUnrated``
         *  * ``agcomVm14`` - VM14
         *  * ``agcomVm18`` - VM18
         */
        public string? agcom_rating { get; }

        /**
         * The video's Anatel (Asociación Nacional de Televisión) rating for Chilean television.
         *
         * Valid values for this property are:
         *
         *  * ``anatelA`` - A
         *  * ``anatelF`` - F
         *  * ``anatelI`` - I
         *  * ``anatelI10`` - I-10
         *  * ``anatelI12`` - I-12
         *  * ``anatelI7`` - I-7
         *  * ``anatelR`` - R
         *  * ``anatelUnrated``
         */
        public string? anatel_rating { get; }

        /**
         * The video's British Board of Film Classification (BBFC) rating.
         *
         * Valid values for this property are:
         *
         *  * ``bbfc12`` - 12
         *  * ``bbfc12a`` - 12A
         *  * ``bbfc15`` - 15
         *  * ``bbfc18`` - 18
         *  * ``bbfcPg`` - PG
         *  * ``bbfcR18`` - R18
         *  * ``bbfcU`` - U
         *  * ``bbfcUnrated``
         */
        public string? bbfc_rating { get; }

        /**
         * The video's rating from Thailand's Board of Film and Video Censors.
         *
         * Valid values for this property are:
         *
         *  * ``bfvc13`` - 13
         *  * ``bfvc15`` - 15
         *  * ``bfvc18`` - 18
         *  * ``bfvc20`` - 20
         *  * ``bfvcB`` - B
         *  * ``bfvcE`` - E
         *  * ``bfvcG`` - G
         *  * ``bfvcUnrated``
         */
        public string? bfvc_rating { get; }

        /**
         * The video's rating from the Austrian Board of Media Classification (Bundesministerium für Unterricht, Kunst
         * und Kultur).
         *
         * Valid values for this property are:
         *
         *  * ``bmukk10`` - 10+
         *  * ``bmukk12`` - 12+
         *  * ``bmukk14`` - 14+
         *  * ``bmukk16`` - 16+
         *  * ``bmukk6`` - 6+
         *  * ``bmukk8`` - 8+
         *  * ``bmukkAa`` - Unrestricted
         *  * ``bmukkUnrated``
         */
        public string? bmukk_rating { get; }

        /**
         * The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian
         * English-language broadcasts.
         *
         * For more information, see the [[http://www.cbsc.ca/english/agvot/englishsystem.php|Canadian Broadcast Standards Council]]
         * website.
         *
         * Valid values for this property are:
         *
         *  * ``catv14plus`` - 14+
         *  * ``catv18plus`` - 18+
         *  * ``catvC`` - C
         *  * ``catvC8`` - C8
         *  * ``catvG`` - G
         *  * ``catvPg`` - PG
         *  * ``catvUnrated``
         */
        public string? catv_rating { get; }

        /**
         * The video's rating from the Canadian Radio-Television and Telecommunications Commission (CRTC) for Canadian
         * French-language broadcasts.
         *
         * For more information, see the [[http://www.cbsc.ca/english/agvot/frenchsystem.php|Canadian Broadcast Standards Council]]
         * website.
         *
         * Valid values for this property are:
         *
         *  * ``catvfr13plus`` - 13+
         *  * ``catvfr16plus`` - 16+
         *  * ``catvfr18plus`` - 18+
         *  * ``catvfr8plus`` - 8+
         *  * ``catvfrG`` - G
         *  * ``catvfrUnrated``
         */
        public string? catvfr_rating { get; }

        /**
         * The videos's Central Board of Film Certification (CBFC - India) rating.
         *
         * Valid values for this property are:
         *
         *  * ``cbfcA`` - A
         *  * ``cbfcS`` - S
         *  * ``cbfcU`` - U
         *  * ``cbfcUnrated``
         *  * ``cbfcUA`` - U/A
         */
        public string? cbfc_rating { get; }

        /**
         * The video's Consejo de Calificación Cinematográfica (Chile) rating.
         *
         * Valid values for this property are:
         *
         *  * ``ccc14`` - 14+
         *  * ``ccc18`` - 18+
         *  * ``ccc18s`` - 18+ - contenido pornográfico
         *  * ``ccc18v`` - 18+ - contenido excesivamente violento
         *  * ``ccc6`` - 6+ - inconveniente para menores de 7 años
         *  * ``cccTe`` - Todo espectador
         *  * ``cccUnrated``
         */
        public string? ccc_rating { get; }

        /**
         * The video's rating from Portugal's Comissão de Classificação de Espect´culos.
         *
         * Valid values for this property are:
         *
         *  * ``cceM12`` - 12
         *  * ``cceM14`` - 14
         *  * ``cceM16`` - 16
         *  * ``cceM18`` - 18
         *  * ``cceM4`` - 4
         *  * ``cceM6`` - 6
         *  * ``cceUnrated``
         */
        public string? cce_rating { get; }

        /**
         * The video's rating in Switzerland.
         *
         * Valid values for this property are:
         *
         *  * ``chfilm0`` - 0
         *  * ``chfilm12`` - 12
         *  * ``chfilm16`` - 16
         *  * ``chfilm18`` - 18
         *  * ``chfilm6`` - 6
         *  * ``chfilmUnrated``
         */
        public string? chfilm_rating { get; }

        /**
         * The video's Canadian Home Video Rating System (CHVRS) rating.
         *
         * Valid values for this property are:
         *
         *  * ``chvrs14a`` - 14A
         *  * ``chvrs18a`` - 18A
         *  * ``chvrsE`` - E
         *  * ``chvrsG`` - G
         *  * ``chvrsPg`` - PG
         *  * ``chvrsR`` - R
         *  * ``chvrsUnrated``
         */
        public string? chvrs_rating { get; }

        /**
         * The video's rating from the Commission de Contrôle des Films (Belgium).
         *
         * Valid values for this property are:
         *
         *  * ``cicfE`` - E
         *  * ``cicfKntEna`` - KNT/ENA
         *  * ``cicfKtEa`` - KT/EA
         *  * ``cicfUnrated``
         */
        public string? cicf_rating { get; }

        // TODO: Complete documentation here.
        // https://developers.google.com/youtube/v3/docs/videos#contentDetails.contentRating

        public string? cna_rating { get; }

        public string? cnc_rating { get; }

        public string? csa_rating { get; }

        public string? cscf_rating { get; }

        public string? czfilm_rating { get; }

        public string? djctq_rating { get; }

        public Gee.ArrayList<string> djctq_rating_reasons { get; }

        public string? ecbmct_rating { get; }

        public string? eefilm_rating { get; }

        public string? egfilm_rating { get; }

        public string? eirin_rating { get; }

        public string? fcbm_rating { get; }

        public string? fco_rating { get; }

        public string? fpb_rating { get; }

        public Gee.ArrayList<string> fpb_rating_reasons { get; }

        public string? fsk_rating { get; }

        public string? grfilm_rating { get; }

        public string? icaa_rating { get; }

        public string? ifco_rating { get; }

        public string? ilfilm_rating { get; }

        public string? incaa_rating { get; }

        public string? kfcb_rating { get; }

        public string? kijkwijzer_rating { get; }

        public string? kmrb_rating { get; }

        public string? lsf_rating { get; }

        public string? mccaa_rating { get; }

        public string? mccyp_rating { get; }

        public string? mcst_rating { get; }

        public string? mda_rating { get; }

        public string? medietilsynet_rating { get; }

        public string? meku_rating { get; }

        public string? mibac_rating { get; }

        public string? moc_rating { get; }

        public string? moctw_rating { get; }

        public string? mpaa_rating { get; }

        public string? mpaat_rating { get; }

        public string? mtrcb_rating { get; }

        public string? nbc_rating { get; }

        public string? nfrc_rating { get; }

        public string? nfvcb_rating { get; }

        public string? nkclv_rating { get; }

        public string? oflc_rating { get; }

        public string? pefilm_rating { get; }

        public string? resorteviolencia_rating { get; }

        public string? rtc_rating { get; }

        public string? rte_rating { get; }

        public string? russia_rating { get; }

        public string? skfilm_rating { get; }

        public string? smais_rating { get; }

        public string? smsa_rating { get; }

        public string? tvpg_rating { get; }

        public string? yt_rating { get; }
    }
}
