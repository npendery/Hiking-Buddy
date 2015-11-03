export default Ember.HTMLBars.template((function() {
  var child0 = (function() {
    return {
      meta: {
        "topLevel": null,
        "revision": "Ember@2.1.0",
        "loc": {
          "source": null,
          "start": {
            "line": 2,
            "column": 2
          },
          "end": {
            "line": 6,
            "column": 2
          }
        },
        "moduleName": "frontend/templates/hikes/new.hbs"
      },
      isEmpty: false,
      arity: 1,
      cachedFragment: null,
      hasRendered: false,
      buildFragment: function buildFragment(dom) {
        var el0 = dom.createDocumentFragment();
        var el1 = dom.createTextNode("  ");
        dom.appendChild(el0, el1);
        var el1 = dom.createElement("div");
        dom.setAttribute(el1,"class","alert alert-danger");
        dom.setAttribute(el1,"role","alert");
        var el2 = dom.createTextNode("\n    ");
        dom.appendChild(el1, el2);
        var el2 = dom.createComment("");
        dom.appendChild(el1, el2);
        var el2 = dom.createTextNode("\n  ");
        dom.appendChild(el1, el2);
        dom.appendChild(el0, el1);
        var el1 = dom.createTextNode("\n");
        dom.appendChild(el0, el1);
        return el0;
      },
      buildRenderNodes: function buildRenderNodes(dom, fragment, contextualElement) {
        var morphs = new Array(1);
        morphs[0] = dom.createMorphAt(dom.childAt(fragment, [1]),1,1);
        return morphs;
      },
      statements: [
        ["content","error",["loc",[null,[4,4],[4,13]]]]
      ],
      locals: ["error"],
      templates: []
    };
  }());
  var child1 = (function() {
    return {
      meta: {
        "topLevel": null,
        "revision": "Ember@2.1.0",
        "loc": {
          "source": null,
          "start": {
            "line": 8,
            "column": 4
          },
          "end": {
            "line": 21,
            "column": 4
          }
        },
        "moduleName": "frontend/templates/hikes/new.hbs"
      },
      isEmpty: false,
      arity: 0,
      cachedFragment: null,
      hasRendered: false,
      buildFragment: function buildFragment(dom) {
        var el0 = dom.createDocumentFragment();
        var el1 = dom.createTextNode("      ");
        dom.appendChild(el0, el1);
        var el1 = dom.createElement("div");
        var el2 = dom.createTextNode("\n        ");
        dom.appendChild(el1, el2);
        var el2 = dom.createComment("");
        dom.appendChild(el1, el2);
        var el2 = dom.createTextNode("\n      ");
        dom.appendChild(el1, el2);
        dom.appendChild(el0, el1);
        var el1 = dom.createTextNode("\n      ");
        dom.appendChild(el0, el1);
        var el1 = dom.createElement("div");
        var el2 = dom.createTextNode("\n        ");
        dom.appendChild(el1, el2);
        var el2 = dom.createComment("");
        dom.appendChild(el1, el2);
        var el2 = dom.createTextNode("\n      ");
        dom.appendChild(el1, el2);
        dom.appendChild(el0, el1);
        var el1 = dom.createTextNode("\n      ");
        dom.appendChild(el0, el1);
        var el1 = dom.createElement("div");
        var el2 = dom.createTextNode("\n        ");
        dom.appendChild(el1, el2);
        var el2 = dom.createComment("");
        dom.appendChild(el1, el2);
        var el2 = dom.createTextNode("\n      ");
        dom.appendChild(el1, el2);
        dom.appendChild(el0, el1);
        var el1 = dom.createTextNode("\n      ");
        dom.appendChild(el0, el1);
        var el1 = dom.createElement("div");
        var el2 = dom.createTextNode("\n        ");
        dom.appendChild(el1, el2);
        var el2 = dom.createComment("");
        dom.appendChild(el1, el2);
        var el2 = dom.createTextNode("\n      ");
        dom.appendChild(el1, el2);
        dom.appendChild(el0, el1);
        var el1 = dom.createTextNode("\n");
        dom.appendChild(el0, el1);
        return el0;
      },
      buildRenderNodes: function buildRenderNodes(dom, fragment, contextualElement) {
        var morphs = new Array(4);
        morphs[0] = dom.createMorphAt(dom.childAt(fragment, [1]),1,1);
        morphs[1] = dom.createMorphAt(dom.childAt(fragment, [3]),1,1);
        morphs[2] = dom.createMorphAt(dom.childAt(fragment, [5]),1,1);
        morphs[3] = dom.createMorphAt(dom.childAt(fragment, [7]),1,1);
        return morphs;
      },
      statements: [
        ["inline","textarea",[],["class","form-control","placeholder","Name","value",["subexpr","@mut",[["get","name",["loc",[null,[10,65],[10,69]]]]],[],[]]],["loc",[null,[10,8],[10,71]]]],
        ["inline","textarea",[],["class","form-control","placeholder","Location","value",["subexpr","@mut",[["get","location",["loc",[null,[13,69],[13,77]]]]],[],[]]],["loc",[null,[13,8],[13,79]]]],
        ["inline","textarea",[],["class","form-control","placeholder","Description","value",["subexpr","@mut",[["get","description",["loc",[null,[16,72],[16,83]]]]],[],[]]],["loc",[null,[16,8],[16,85]]]],
        ["inline","textarea",[],["class","form-control","placeholder","Website","value",["subexpr","@mut",[["get","website",["loc",[null,[19,68],[19,75]]]]],[],[]]],["loc",[null,[19,8],[19,77]]]]
      ],
      locals: [],
      templates: []
    };
  }());
  return {
    meta: {
      "topLevel": null,
      "revision": "Ember@2.1.0",
      "loc": {
        "source": null,
        "start": {
          "line": 1,
          "column": 0
        },
        "end": {
          "line": 24,
          "column": 0
        }
      },
      "moduleName": "frontend/templates/hikes/new.hbs"
    },
    isEmpty: false,
    arity: 0,
    cachedFragment: null,
    hasRendered: false,
    buildFragment: function buildFragment(dom) {
      var el0 = dom.createDocumentFragment();
      var el1 = dom.createElement("div");
      dom.setAttribute(el1,"class","container text-center");
      var el2 = dom.createTextNode("\n");
      dom.appendChild(el1, el2);
      var el2 = dom.createComment("");
      dom.appendChild(el1, el2);
      var el2 = dom.createTextNode("  ");
      dom.appendChild(el1, el2);
      var el2 = dom.createElement("div");
      dom.setAttribute(el2,"class","well");
      var el3 = dom.createTextNode("\n");
      dom.appendChild(el2, el3);
      var el3 = dom.createComment("");
      dom.appendChild(el2, el3);
      var el3 = dom.createTextNode("  ");
      dom.appendChild(el2, el3);
      dom.appendChild(el1, el2);
      var el2 = dom.createTextNode("\n");
      dom.appendChild(el1, el2);
      dom.appendChild(el0, el1);
      var el1 = dom.createTextNode("\n");
      dom.appendChild(el0, el1);
      return el0;
    },
    buildRenderNodes: function buildRenderNodes(dom, fragment, contextualElement) {
      var element0 = dom.childAt(fragment, [0]);
      var morphs = new Array(2);
      morphs[0] = dom.createMorphAt(element0,1,1);
      morphs[1] = dom.createMorphAt(dom.childAt(element0, [3]),1,1);
      return morphs;
    },
    statements: [
      ["block","each",[["get","validationErrors",["loc",[null,[2,10],[2,26]]]]],[],0,null,["loc",[null,[2,2],[6,11]]]],
      ["block","em-form",[],["model",["subexpr","@mut",[["get","this",["loc",[null,[8,21],[8,25]]]]],[],[]],"action","newHike"],1,null,["loc",[null,[8,4],[21,16]]]]
    ],
    locals: [],
    templates: [child0, child1]
  };
}()));