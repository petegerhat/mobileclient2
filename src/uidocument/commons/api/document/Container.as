/* Automatically generated by IntelliJ IDEA from Java, revision needed before production use */
/*
 * Copyright (c) 2008, Vaclav Slovacek. All Rights Reserved.
 *
 * Product: UIProtocol Java
 *
 * This source-code is released under following license:
 * - no release outside i2home project is allowed
 * - this copyright notice must be placed unmodified in every file derived from this source code
 */






// @todo container as subelement
package uidocument.commons.api.document {

/**
 * Element that can contain other elements and containers.
 */
public class Container extends Element {

    private var children:Array;
    private var layout:Layout;

    public function Container(id:String):void {
        super(id);
        this.children = new Array();
        this.layout = null;

    }

    /**
     * Retrieves list of children of the container.
     *
     * @return children of the container
     */
    public function getChildren():Array {
        return children;
    }

    ;

    /**
     * Adds new element into the container. This method also returns switcher that can be used to exchange the
     * element. If the exchange is not possible for any reason null is returned.
     *
     * @param element to be added to the container
     * @return switcher that can be used to exchange the inserted component
     */
    public function add(element:Element):void {
        children.push(element);
    }

    ;

    /**
     * Retrieves layout used by the container to arrange children.
     *
     * @return layout used by the container
     */
    public function getContainerLayout():Layout {
        return this.layout;
    }

    ;

    /**
     * Sets layout for the component.
     *
     * @param layout of the container
     */
    public function setContainerLayout(layout:Layout):void {
        this.layout = layout;
    }

    ;
}
}