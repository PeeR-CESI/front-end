import '/components/fiche_article_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                if (MediaQuery.sizeOf(context).width > 1059.0 ? false : true)
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 10.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: const Color(0x004B39EF),
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          buttonSize: 40.0,
                          fillColor: const Color(0x004B39EF),
                          icon: Icon(
                            Icons.menu,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          onPressed: () {
                            print('IconButton pressed ...');
                          },
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/image-removebg-preview.png',
                            width: 150.0,
                            height: 50.0,
                            fit: BoxFit.fitWidth,
                            cacheWidth: 150,
                            cacheHeight: 50,
                          ),
                        ),
                        Container(
                          width: 40.0,
                          height: 40.0,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.network(
                            'https://picsum.photos/seed/617/600',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ))
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        if (MediaQuery.sizeOf(context).width < 1100.0
                            ? false
                            : true)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/image-removebg-preview.png',
                                  width: 150.0,
                                  height: 50.0,
                                  fit: BoxFit.fitWidth,
                                  cacheWidth: 150,
                                  cacheHeight: 50,
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.textController,
                                    focusNode: _model.textFieldFocusNode,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'h1vp3gh0' /* Label here... */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model.textControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).customColor3,
                                borderRadius: 0.0,
                                borderWidth: 1.0,
                                buttonSize: 40.0,
                                fillColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                icon: Icon(
                                  Icons.search_sharp,
                                  color:
                                      FlutterFlowTheme.of(context).customColor3,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 100.0, 0.0),
                                child: Icon(
                                  Icons.location_on,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 35.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 50.0, 0.0),
                                child: AutoSizeText(
                                  FFLocalizations.of(context).getText(
                                    'p9nv9pq0' /* Peerers */,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Inter',
                                        fontSize: 28.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ),
                              Icon(
                                Icons.mark_chat_unread_outlined,
                                color:
                                    FlutterFlowTheme.of(context).customColor4,
                                size: 40.0,
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 20.0, 0.0),
                                child: Icon(
                                  Icons.favorite_border,
                                  color:
                                      FlutterFlowTheme.of(context).customColor4,
                                  size: 40.0,
                                ),
                              ),
                              Container(
                                width: 71.0,
                                height: 71.0,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/images/office-1730939.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'jzqs561i' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  '65fjj6le' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'hjo1zsq2' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'cw4y556t' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'qmv4yw8d' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'fjvvlkaq' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'mp1plzr0' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  '1pi203n9' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                              AutoSizeText(
                                FFLocalizations.of(context).getText(
                                  'qg0mscwd' /* Administrative */,
                                ),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color: FlutterFlowTheme.of(context).greyC,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.0,
                                ),
                              ),
                            ],
                          ),
                        Divider(
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).greyC,
                        ),
                      ],
                    ),
                  ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        constraints: const BoxConstraints(
                          minWidth: double.infinity,
                          maxWidth: double.infinity,
                        ),
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: Image.asset(
                              'assets/images/Screenshot_2024-04-02_105017.png',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              40.0, 0.0, 0.0, 0.0),
                          child: AutoSizeText(
                            FFLocalizations.of(context).getText(
                              'yi6jchuj' /* Welcome Sitia, */,
                            ),
                            maxLines: 1,
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 64.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          AutoSizeText(
                            FFLocalizations.of(context).getText(
                              'nhjfbby4' /* Explore popular job on Peer */,
                            ),
                            maxLines: 1,
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 32.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 40.0, 0.0),
                                    child: Container(
                                      height: 31.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor3,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.settings_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: AutoSizeText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'vdz0mrxx' /* Hello World */,
                                              ),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 40.0, 0.0),
                                    child: Container(
                                      height: 31.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor3,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.settings_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: AutoSizeText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'zft30mxf' /* Hello World */,
                                              ),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 40.0, 0.0),
                                    child: Container(
                                      height: 31.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor3,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.settings_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: AutoSizeText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4zoap8z7' /* Hello World */,
                                              ),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 40.0, 0.0),
                                    child: Container(
                                      height: 31.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .customColor3,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 0.0, 0.0),
                                            child: Icon(
                                              Icons.settings_outlined,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: AutoSizeText(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'e3s4b3fs' /* Hello World */,
                                              ),
                                              style: const TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 20.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  wrapWithModel(
                                    model: _model.ficheArticleModel,
                                    updateCallback: () => setState(() {}),
                                    child: const FicheArticleWidget(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          AutoSizeText(
                            FFLocalizations.of(context).getText(
                              'cyeuayet' /* Get inspired by community on P... */,
                            ),
                            maxLines: 1,
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w600,
                              fontSize: 32.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 60.0, 0.0),
                                  child: Container(
                                    width: 347.0,
                                    height: 429.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        image: Image.asset(
                                          'assets/images/office-1730939.jpg',
                                        ).image,
                                      ),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'wdoc5yei' /* PhotoMix */,
                                                ),
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor3,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 24.0,
                                                ),
                                              ),
                                              Text(
                                                FFLocalizations.of(context)
                                                    .getText(
                                                  'qkcjta5e' /* Website */,
                                                ),
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .customColor3,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
