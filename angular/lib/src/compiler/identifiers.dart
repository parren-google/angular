import "compile_metadata.dart"
    show CompileIdentifierMetadata, CompileTokenMetadata;

final appViewModuleUrl = "asset:angular/lib/src/core/linker/app_view.dart";
final debugAppViewModuleUrl = "asset:angular/lib/src/debug/debug_app_view.dart";
final appViewUtilsModuleUrl =
    "asset:angular/lib/src/core/linker/app_view_utils.dart";
final cdModuleUrl =
    "asset:angular/lib/src/core/change_detection/change_detection.dart";
final angularRootUrl = "package:angular/angular.dart";
final ngIfUrl = "asset:angular/lib/src/common/directives/ng_if.dart";
final ngForUrl = "asset:angular/lib/src/common/directives/ng_for.dart";
final profileRuntimeModuleUrl =
    "asset:angular/lib/src/debug/profile_runtime.dart";
final runtimeUtilsModuleUrl = "asset:angular/lib/src/runtime.dart";

class Identifiers {
  static final appViewUtils = new CompileIdentifierMetadata<dynamic>(
      name: "appViewUtils", moduleUrl: appViewUtilsModuleUrl);
  static final AppView = new CompileIdentifierMetadata<dynamic>(
      name: "AppView", moduleUrl: appViewModuleUrl);
  static final ViewContainer = new CompileIdentifierMetadata<dynamic>(
      name: "ViewContainer",
      moduleUrl: "asset:angular/lib/src/core/linker/view_container.dart");
  static final ViewContainerToken = identifierToken(ViewContainer);
  static final ElementRef = new CompileIdentifierMetadata<dynamic>(
      name: "ElementRef",
      moduleUrl: "asset:angular/lib/src/core/linker/element_ref.dart");
  static final ElementRefToken = identifierToken(ElementRef);
  static final ViewContainerRef = new CompileIdentifierMetadata<dynamic>(
      name: "ViewContainerRef",
      moduleUrl: "asset:angular/lib/src/core/linker/view_container_ref.dart");
  static final ViewContainerRefToken =
      identifierToken(Identifiers.ViewContainerRef);
  static final ComponentLoader = new CompileIdentifierMetadata<dynamic>(
      name: "ComponentLoader",
      moduleUrl: "asset:angular/lib/src/core/linker/component_loader.dart");
  static final ComponentLoaderToken = identifierToken(ComponentLoader);
  static final ChangeDetectorRef = new CompileIdentifierMetadata<dynamic>(
      name: "ChangeDetectorRef",
      moduleUrl: 'asset:angular/lib/src/core/change_detection/'
          'change_detector_ref.dart');
  static final ChangeDetectorRefToken =
      identifierToken(Identifiers.ChangeDetectorRef);
  static final ComponentFactory = new CompileIdentifierMetadata<dynamic>(
      name: 'ComponentFactory', moduleUrl: angularRootUrl);
  static final DirectiveChangeDetector = new CompileIdentifierMetadata<dynamic>(
      name: 'DirectiveChangeDetector',
      moduleUrl: 'asset:angular/lib/src/core/'
          'change_detection/directive_change_detector.dart');
  static final RenderComponentType = new CompileIdentifierMetadata<dynamic>(
      name: "RenderComponentType",
      moduleUrl: "asset:angular/lib/src/core/render/api.dart");
  static final ComponentRef = new CompileIdentifierMetadata<dynamic>(
      name: "ComponentRef", moduleUrl: angularRootUrl);
  static final TemplateRef = new CompileIdentifierMetadata<dynamic>(
      name: "TemplateRef",
      moduleUrl: "asset:angular/lib/src/core/linker/template_ref.dart");
  static final TemplateRefToken = identifierToken(Identifiers.TemplateRef);
  static final ValueUnwrapper = new CompileIdentifierMetadata<dynamic>(
      name: "ValueUnwrapper", moduleUrl: cdModuleUrl);
  static final Injector = new CompileIdentifierMetadata<dynamic>(
      name: "Injector",
      moduleUrl: 'asset:angular/lib/src/di/injector/injector.dart');
  static final InjectorToken = identifierToken(Identifiers.Injector);
  static final ViewEncapsulation = new CompileIdentifierMetadata<dynamic>(
      name: "ViewEncapsulation", moduleUrl: angularRootUrl);
  static final ViewType = new CompileIdentifierMetadata<dynamic>(
      name: "ViewType",
      moduleUrl: 'asset:angular/lib/src/core/linker/view_type.dart');
  static final ChangeDetectionStrategy = new CompileIdentifierMetadata<dynamic>(
      name: "ChangeDetectionStrategy", moduleUrl: cdModuleUrl);
  static final TemplateSecurityContext = new CompileIdentifierMetadata<dynamic>(
      name: 'TemplateSecurityContext',
      moduleUrl: 'asset:angular/lib/src/core/security.dart');
  static final SimpleChange = new CompileIdentifierMetadata<dynamic>(
      name: "SimpleChange", moduleUrl: cdModuleUrl);
  static final ChangeDetectorState = new CompileIdentifierMetadata<dynamic>(
      name: "ChangeDetectorState", moduleUrl: cdModuleUrl);
  static final checkBinding = new CompileIdentifierMetadata<dynamic>(
      name: "checkBinding", moduleUrl: appViewUtilsModuleUrl);
  static final createAndAppend = new CompileIdentifierMetadata<dynamic>(
      name: "createAndAppend", moduleUrl: appViewModuleUrl);
  static final createDivAndAppend = new CompileIdentifierMetadata<dynamic>(
      name: "createDivAndAppend", moduleUrl: appViewModuleUrl);
  static final createSpanAndAppend = new CompileIdentifierMetadata<dynamic>(
      name: "createSpanAndAppend", moduleUrl: appViewModuleUrl);
  static final createViewContainerAnchor = new CompileIdentifierMetadata(
      name: 'createViewContainerAnchor', moduleUrl: appViewModuleUrl);
  static final devModeEqual = new CompileIdentifierMetadata<dynamic>(
      name: "devModeEqual", moduleUrl: cdModuleUrl);
  static final identical =
      new CompileIdentifierMetadata<dynamic>(name: "identical");
  static final profileSetup = new CompileIdentifierMetadata<dynamic>(
      name: "profileSetup", moduleUrl: profileRuntimeModuleUrl);
  static final profileMarkStart = new CompileIdentifierMetadata<dynamic>(
      name: "profileMarkStart", moduleUrl: profileRuntimeModuleUrl);
  static final profileMarkEnd = new CompileIdentifierMetadata<dynamic>(
      name: "profileMarkEnd", moduleUrl: profileRuntimeModuleUrl);

  /// String interpolation where prefix,suffix are empty
  /// (most common case).
  static final throwOnChanges = new CompileIdentifierMetadata<dynamic>(
      name: "AppViewUtils.throwOnChanges", moduleUrl: appViewUtilsModuleUrl);
  static final isDevMode = new CompileIdentifierMetadata<dynamic>(
      name: "isDevMode", moduleUrl: runtimeUtilsModuleUrl);
  static final unsafeCast = new CompileIdentifierMetadata<dynamic>(
      name: "unsafeCast", moduleUrl: runtimeUtilsModuleUrl);

  static final interpolate = <CompileIdentifierMetadata>[
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate0", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate1", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate2", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate3", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate4", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate5", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate6", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate7", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate8", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "interpolate9", moduleUrl: appViewUtilsModuleUrl),
  ];
  static final createTrustedHtml = new CompileIdentifierMetadata(
      name: 'createTrustedHtml', moduleUrl: appViewUtilsModuleUrl);
  static final flattenNodes = new CompileIdentifierMetadata<dynamic>(
      name: "flattenNodes", moduleUrl: appViewUtilsModuleUrl);
  static final firstOrNull = new CompileIdentifierMetadata<dynamic>(
      name: "firstOrNull", moduleUrl: appViewUtilsModuleUrl);
  static final EMPTY_ARRAY = new CompileIdentifierMetadata<dynamic>(
      name: "EMPTY_ARRAY", moduleUrl: appViewUtilsModuleUrl);
  static final EMPTY_MAP = new CompileIdentifierMetadata<dynamic>(
      name: "EMPTY_MAP", moduleUrl: appViewUtilsModuleUrl);
  static final NG_IF_DIRECTIVE =
      new CompileIdentifierMetadata<dynamic>(name: "NgIf", moduleUrl: ngIfUrl);
  static final NG_FOR_DIRECTIVE = new CompileIdentifierMetadata<dynamic>(
      name: "NgFor", moduleUrl: ngForUrl);
  static final pureProxies = [
    null,
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy1", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy2", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy3", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy4", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy5", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy6", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy7", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy8", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy9", moduleUrl: appViewUtilsModuleUrl),
    new CompileIdentifierMetadata<dynamic>(
        name: "pureProxy10", moduleUrl: appViewUtilsModuleUrl)
  ];
  // Runtime is initialized by output interpreter. Compiler executes in VM and
  // can't import dart:html to initialize here.
  static var HTML_COMMENT_NODE = new CompileIdentifierMetadata<dynamic>(
      name: "Comment", moduleUrl: "dart:html");
  static var HTML_TEXT_NODE = new CompileIdentifierMetadata<dynamic>(
      name: "Text", moduleUrl: "dart:html");
  static var HTML_DOCUMENT = new CompileIdentifierMetadata<dynamic>(
      name: "document", moduleUrl: "dart:html");
  static final HTML_DOCUMENT_FRAGMENT = new CompileIdentifierMetadata(
      name: 'DocumentFragment', moduleUrl: 'dart:html');
  static final HTML_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "Element", moduleUrl: "dart:html");
  static final ElementToken = identifierToken(HTML_ELEMENT);
  static final HTML_HTML_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "HtmlElement", moduleUrl: "dart:html");
  static final HtmlElementToken = identifierToken(HTML_HTML_ELEMENT);
  static final SVG_SVG_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "SvgSvgElement", moduleUrl: "dart:svg");
  static final SVG_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "SvgElement", moduleUrl: "dart:svg");
  static final HTML_ANCHOR_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "AnchorElement", moduleUrl: "dart:html");
  static final HTML_DIV_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "DivElement", moduleUrl: "dart:html");
  static final HTML_AREA_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "AreaElement", moduleUrl: "dart:html");
  static final HTML_AUDIO_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "AudioElement", moduleUrl: "dart:html");
  static final HTML_BUTTON_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "ButtonElement", moduleUrl: "dart:html");
  static final HTML_CANVAS_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "CanvasElement", moduleUrl: "dart:html");
  static final HTML_FORM_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "FormElement", moduleUrl: "dart:html");
  static final HTML_IFRAME_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "IFrameElement", moduleUrl: "dart:html");
  static final HTML_IMAGE_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "ImageElement", moduleUrl: "dart:html");
  static final HTML_INPUT_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "InputElement", moduleUrl: "dart:html");
  static final HTML_TEXTAREA_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "TextAreaElement", moduleUrl: "dart:html");
  static final HTML_MEDIA_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "MediaElement", moduleUrl: "dart:html");
  static final HTML_MENU_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "MenuElement", moduleUrl: "dart:html");
  static final HTML_NODE_TREE_SANITIZER = new CompileIdentifierMetadata(
      name: 'NodeTreeSanitizer', moduleUrl: 'dart:html');
  static final HTML_OPTION_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "OptionElement", moduleUrl: "dart:html");
  static final HTML_OLIST_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "OListElement", moduleUrl: "dart:html");
  static final HTML_SELECT_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "SelectElement", moduleUrl: "dart:html");
  static final HTML_TABLE_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "TableElement", moduleUrl: "dart:html");
  static final HTML_TABLE_ROW_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "TableRowElement", moduleUrl: "dart:html");
  static final HTML_TABLE_COL_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "TableColElement", moduleUrl: "dart:html");
  static final HTML_ULIST_ELEMENT = new CompileIdentifierMetadata<dynamic>(
      name: "UListElement", moduleUrl: "dart:html");
  static final HTML_EVENT = new CompileIdentifierMetadata<dynamic>(
      name: "Event", moduleUrl: "dart:html");
  static final HTML_NODE = new CompileIdentifierMetadata<dynamic>(
      name: "Node", moduleUrl: "dart:html");

  /// A class used for message internationalization.
  static final Intl = new CompileIdentifierMetadata(
    name: 'Intl',
    moduleUrl: 'package:intl/intl.dart',
  );
}

CompileTokenMetadata identifierToken(CompileIdentifierMetadata identifier) {
  return new CompileTokenMetadata(identifier: identifier);
}
