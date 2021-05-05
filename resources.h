#include <string>
#include <vector>

#include "common.h"
#include "bgfx_utils.h"
#include <bx/file.h>

#pragma once

namespace bgfx
{
    int32_t read(bx::ReaderI* _reader, bgfx::VertexLayout& _layout, bx::Error* _err = NULL);
}

namespace {

#define RENDER_VIEWID_RANGE1_PASS_0  1
#define RENDER_VIEWID_RANGE1_PASS_1  2
#define RENDER_VIEWID_RANGE1_PASS_2  3
#define RENDER_VIEWID_RANGE1_PASS_3  4
#define RENDER_VIEWID_RANGE1_PASS_4  5
#define RENDER_VIEWID_RANGE1_PASS_5  6
#define RENDER_VIEWID_RANGE5_PASS_6  7
#define RENDER_VIEWID_RANGE1_PASS_7 13

#define MAX_NUM_LIGHTS 5

    struct PosNormalTexcoordVertex {
        float m_x;
        float m_y;
        float m_z;
        uint32_t m_normal;
        float m_u;
        float m_v;

        static void init() {
            ms_layout
                    .begin()
                    .add(bgfx::Attrib::Position, 3, bgfx::AttribType::Float)
                    .add(bgfx::Attrib::Normal, 4, bgfx::AttribType::Uint8, true, true)
                    .add(bgfx::Attrib::TexCoord0, 2, bgfx::AttribType::Float)
                    .end();
        }

        static bgfx::VertexLayout ms_layout;
    };

    bgfx::VertexLayout PosNormalTexcoordVertex::ms_layout;

    static const float s_texcoord = 5.0f;
    static PosNormalTexcoordVertex s_hplaneVertices[] =
            {
                    { -1.0f, 0.0f,  1.0f, encodeNormalRgba8(0.0f, 1.0f, 0.0f), s_texcoord, s_texcoord },
                    {  1.0f, 0.0f,  1.0f, encodeNormalRgba8(0.0f, 1.0f, 0.0f), s_texcoord, 0.0f       },
                    { -1.0f, 0.0f, -1.0f, encodeNormalRgba8(0.0f, 1.0f, 0.0f), 0.0f,       s_texcoord },
                    {  1.0f, 0.0f, -1.0f, encodeNormalRgba8(0.0f, 1.0f, 0.0f), 0.0f,       0.0f       },
            };

    static PosNormalTexcoordVertex s_vplaneVertices[] =
            {
                    { -1.0f,  1.0f, 0.0f, encodeNormalRgba8(0.0f, 0.0f, -1.0f), 1.0f, 1.0f },
                    {  1.0f,  1.0f, 0.0f, encodeNormalRgba8(0.0f, 0.0f, -1.0f), 1.0f, 0.0f },
                    { -1.0f, -1.0f, 0.0f, encodeNormalRgba8(0.0f, 0.0f, -1.0f), 0.0f, 1.0f },
                    {  1.0f, -1.0f, 0.0f, encodeNormalRgba8(0.0f, 0.0f, -1.0f), 0.0f, 0.0f },
            };

    /*static const PosNormalTexcoordVertex s_cubeVertices[] =
            {
                    { -1.0f,  1.0f,  1.0f, encodeNormalRgba8( 0.0f,  1.0f,  0.0f), 1.0f, 1.0f },
                    {  1.0f,  1.0f,  1.0f, encodeNormalRgba8( 0.0f,  1.0f,  0.0f), 0.0f, 1.0f },
                    { -1.0f,  1.0f, -1.0f, encodeNormalRgba8( 0.0f,  1.0f,  0.0f), 1.0f, 0.0f },
                    {  1.0f,  1.0f, -1.0f, encodeNormalRgba8( 0.0f,  1.0f,  0.0f), 0.0f, 0.0f },
                    { -1.0f, -1.0f,  1.0f, encodeNormalRgba8( 0.0f, -1.0f,  0.0f), 1.0f, 1.0f },
                    {  1.0f, -1.0f,  1.0f, encodeNormalRgba8( 0.0f, -1.0f,  0.0f), 0.0f, 1.0f },
                    { -1.0f, -1.0f, -1.0f, encodeNormalRgba8( 0.0f, -1.0f,  0.0f), 1.0f, 0.0f },
                    {  1.0f, -1.0f, -1.0f, encodeNormalRgba8( 0.0f, -1.0f,  0.0f), 0.0f, 0.0f },
                    {  1.0f, -1.0f,  1.0f, encodeNormalRgba8( 0.0f,  0.0f,  1.0f), 0.0f, 0.0f },
                    {  1.0f,  1.0f,  1.0f, encodeNormalRgba8( 0.0f,  0.0f,  1.0f), 0.0f, 1.0f },
                    { -1.0f, -1.0f,  1.0f, encodeNormalRgba8( 0.0f,  0.0f,  1.0f), 1.0f, 0.0f },
                    { -1.0f,  1.0f,  1.0f, encodeNormalRgba8( 0.0f,  0.0f,  1.0f), 1.0f, 1.0f },
                    {  1.0f, -1.0f, -1.0f, encodeNormalRgba8( 0.0f,  0.0f, -1.0f), 0.0f, 0.0f },
                    {  1.0f,  1.0f, -1.0f, encodeNormalRgba8( 0.0f,  0.0f, -1.0f), 0.0f, 1.0f },
                    { -1.0f, -1.0f, -1.0f, encodeNormalRgba8( 0.0f,  0.0f, -1.0f), 1.0f, 0.0f },
                    { -1.0f,  1.0f, -1.0f, encodeNormalRgba8( 0.0f,  0.0f, -1.0f), 1.0f, 1.0f },
                    {  1.0f,  1.0f, -1.0f, encodeNormalRgba8( 1.0f,  0.0f,  0.0f), 1.0f, 1.0f },
                    {  1.0f,  1.0f,  1.0f, encodeNormalRgba8( 1.0f,  0.0f,  0.0f), 0.0f, 1.0f },
                    {  1.0f, -1.0f, -1.0f, encodeNormalRgba8( 1.0f,  0.0f,  0.0f), 1.0f, 0.0f },
                    {  1.0f, -1.0f,  1.0f, encodeNormalRgba8( 1.0f,  0.0f,  0.0f), 0.0f, 0.0f },
                    { -1.0f,  1.0f, -1.0f, encodeNormalRgba8(-1.0f,  0.0f,  0.0f), 1.0f, 1.0f },
                    { -1.0f,  1.0f,  1.0f, encodeNormalRgba8(-1.0f,  0.0f,  0.0f), 0.0f, 1.0f },
                    { -1.0f, -1.0f, -1.0f, encodeNormalRgba8(-1.0f,  0.0f,  0.0f), 1.0f, 0.0f },
                    { -1.0f, -1.0f,  1.0f, encodeNormalRgba8(-1.0f,  0.0f,  0.0f), 0.0f, 0.0f },
            };*/

    /*static const uint16_t s_cubeIndices[] =
            {
                    0,  1,  2,
                    1,  3,  2,
                    4,  6,  5,
                    5,  6,  7,

                    8,  9, 10,
                    9, 11, 10,
                    12, 14, 13,
                    13, 14, 15,

                    16, 17, 18,
                    17, 19, 18,
                    20, 22, 21,
                    21, 22, 23,
            };*/

    static const uint16_t s_planeIndices[] =
            {
                    0, 1, 2,
                    1, 3, 2,
            };

    static uint32_t s_viewMask = 0;
    static uint32_t s_clearMask = 0;
    static bgfx::UniformHandle s_texColor;

    void setViewClearMask(uint32_t _viewMask, uint8_t _flags, uint32_t _rgba, float _depth, uint8_t _stencil)
    {
        for (uint32_t view = 0, viewMask = _viewMask; 0 != viewMask; viewMask >>= 1, view += 1 )
        {
            const uint32_t ntz = bx::uint32_cnttz(viewMask);
            viewMask >>= ntz;
            view += ntz;

            bgfx::setViewClear( (uint8_t)view, _flags, _rgba, _depth, _stencil);
        }
    }

    void setViewTransformMask(uint32_t _viewMask, const void* _view, const void* _proj)
    {
        for (uint32_t view = 0, viewMask = _viewMask; 0 != viewMask; viewMask >>= 1, view += 1 )
        {
            const uint32_t ntz = bx::uint32_cnttz(viewMask);
            viewMask >>= ntz;
            view += ntz;

            bgfx::setViewTransform( (uint8_t)view, _view, _proj);
        }
    }

    void setViewRectMask(uint32_t _viewMask, uint16_t _x, uint16_t _y, uint16_t _width, uint16_t _height)
    {
        for (uint32_t view = 0, viewMask = _viewMask; 0 != viewMask; viewMask >>= 1, view += 1 )
        {
            const uint32_t ntz = bx::uint32_cnttz(viewMask);
            viewMask >>= ntz;
            view += ntz;

            bgfx::setViewRect( (uint8_t)view, _x, _y, _width, _height);
        }
    }

    void mtxReflected(float* _result, const bx::Vec3& _pos, const bx::Vec3& _normal)
    {
        const float nx = _normal.x;
        const float ny = _normal.y;
        const float nz = _normal.z;

        _result[ 0] =  1.0f - 2.0f * nx * nx;
        _result[ 1] =       - 2.0f * nx * ny;
        _result[ 2] =       - 2.0f * nx * nz;
        _result[ 3] =  0.0f;

        _result[ 4] =       - 2.0f * nx * ny;
        _result[ 5] =  1.0f - 2.0f * ny * ny;
        _result[ 6] =       - 2.0f * ny * nz;
        _result[ 7] =  0.0f;

        _result[ 8] =       - 2.0f * nx * nz;
        _result[ 9] =       - 2.0f * ny * nz;
        _result[10] =  1.0f - 2.0f * nz * nz;
        _result[11] =  0.0f;

        const float dot = bx::dot(_pos, _normal);

        _result[12] =  2.0f * dot * nx;
        _result[13] =  2.0f * dot * ny;
        _result[14] =  2.0f * dot * nz;
        _result[15] =  1.0f;
    }

    /*void mtxShadow(float* _result, const float* _ground, const float* _light)
    {
        const float dot =
                _ground[0] * _light[0]
                + _ground[1] * _light[1]
                + _ground[2] * _light[2]
                + _ground[3] * _light[3]
        ;

        _result[ 0] =  dot - _light[0] * _ground[0];
        _result[ 1] = 0.0f - _light[1] * _ground[0];
        _result[ 2] = 0.0f - _light[2] * _ground[0];
        _result[ 3] = 0.0f - _light[3] * _ground[0];

        _result[ 4] = 0.0f - _light[0] * _ground[1];
        _result[ 5] =  dot - _light[1] * _ground[1];
        _result[ 6] = 0.0f - _light[2] * _ground[1];
        _result[ 7] = 0.0f - _light[3] * _ground[1];

        _result[ 8] = 0.0f - _light[0] * _ground[2];
        _result[ 9] = 0.0f - _light[1] * _ground[2];
        _result[10] =  dot - _light[2] * _ground[2];
        _result[11] = 0.0f - _light[3] * _ground[2];

        _result[12] = 0.0f - _light[0] * _ground[3];
        _result[13] = 0.0f - _light[1] * _ground[3];
        _result[14] = 0.0f - _light[2] * _ground[3];
        _result[15] =  dot - _light[3] * _ground[3];
    }*/

    void mtxBillboard(float* _result, const float* _view, const float* _pos, const float* _scale)
    {
        _result[ 0] = _view[0]  * _scale[0];
        _result[ 1] = _view[4]  * _scale[0];
        _result[ 2] = _view[8]  * _scale[0];
        _result[ 3] = 0.0f;
        _result[ 4] = _view[1]  * _scale[1];
        _result[ 5] = _view[5]  * _scale[1];
        _result[ 6] = _view[9]  * _scale[1];
        _result[ 7] = 0.0f;
        _result[ 8] = _view[2]  * _scale[2];
        _result[ 9] = _view[6]  * _scale[2];
        _result[10] = _view[10] * _scale[2];
        _result[11] = 0.0f;
        _result[12] = _pos[0];
        _result[13] = _pos[1];
        _result[14] = _pos[2];
        _result[15] = 1.0f;
    }
    struct Uniforms
    {
        void init()
        {
            m_params.m_ambientPass   = 1.0f;
            m_params.m_lightingPass  = 1.0f;
            m_params.m_lightCount    = 1.0f;
            m_params.m_lightIndex    = 0.0f;

            m_ambient[0] = 0.02f;
            m_ambient[1] = 0.02f;
            m_ambient[2] = 0.02f;
            m_ambient[3] = 0.0f; //unused

            m_diffuse[0] = 0.2f;
            m_diffuse[1] = 0.2f;
            m_diffuse[2] = 0.2f;
            m_diffuse[3] = 0.0f; //unused

            m_specular_shininess[0] = 1.0f;
            m_specular_shininess[1] = 1.0f;
            m_specular_shininess[2] = 1.0f;
            m_specular_shininess[3] = 10.0f; //shininess

            m_color[0] = 1.0f;
            m_color[1] = 1.0f;
            m_color[2] = 1.0f;
            m_color[3] = 1.0f;

            m_time = 0.0f;

            for (uint8_t ii = 0; ii < MAX_NUM_LIGHTS; ++ii)
            {
                m_lightPosRadius[ii][0] = 0.0f;
                m_lightPosRadius[ii][1] = 0.0f;
                m_lightPosRadius[ii][2] = 0.0f;
                m_lightPosRadius[ii][3] = 1.0f;

                m_lightRgbInnerR[ii][0] = 1.0f;
                m_lightRgbInnerR[ii][1] = 1.0f;
                m_lightRgbInnerR[ii][2] = 1.0f;
                m_lightRgbInnerR[ii][3] = 1.0f;
            }

            u_params             = bgfx::createUniform("u_params",              bgfx::UniformType::Vec4);
            u_ambient            = bgfx::createUniform("u_ambient",             bgfx::UniformType::Vec4);
            u_diffuse            = bgfx::createUniform("u_diffuse",             bgfx::UniformType::Vec4);
            u_specular_shininess = bgfx::createUniform("u_specular_shininess",  bgfx::UniformType::Vec4);
            u_color              = bgfx::createUniform("u_color",               bgfx::UniformType::Vec4);
            u_lightPosRadius     = bgfx::createUniform("u_lightPosRadius",      bgfx::UniformType::Vec4, MAX_NUM_LIGHTS);
            u_lightRgbInnerR     = bgfx::createUniform("u_lightRgbInnerR",      bgfx::UniformType::Vec4, MAX_NUM_LIGHTS);
        }

        //call this once at initialization
        void submitConstUniforms()
        {
            bgfx::setUniform(u_ambient,            &m_ambient);
            bgfx::setUniform(u_diffuse,            &m_diffuse);
            bgfx::setUniform(u_specular_shininess, &m_specular_shininess);
        }

        //call this before each draw call
        void submitPerDrawUniforms()
        {
            bgfx::setUniform(u_params,         &m_params);
            bgfx::setUniform(u_color,          &m_color);
            bgfx::setUniform(u_lightPosRadius, &m_lightPosRadius, MAX_NUM_LIGHTS);
            bgfx::setUniform(u_lightRgbInnerR, &m_lightRgbInnerR, MAX_NUM_LIGHTS);
        }

        void destroy()
        {
            bgfx::destroy(u_params);
            bgfx::destroy(u_ambient);
            bgfx::destroy(u_diffuse);
            bgfx::destroy(u_specular_shininess);
            bgfx::destroy(u_color);
            bgfx::destroy(u_lightPosRadius);
            bgfx::destroy(u_lightRgbInnerR);
        }

        struct Params
        {
            float m_ambientPass;
            float m_lightingPass;
            float m_lightCount;
            float m_lightIndex;
        };

        struct SvParams
        {
            float m_useStencilTex;
            float m_dfail;
            float m_unused0;
            float m_unused1;
        };


        Params m_params;
        SvParams m_svparams;
        float m_ambient[4];
        float m_diffuse[4];
        float m_specular_shininess[4];
        float m_color[4];
        float m_time;
        float m_lightPosRadius[MAX_NUM_LIGHTS][4];
        float m_lightRgbInnerR[MAX_NUM_LIGHTS][4];

        /**
         * u_params.x - u_ambientPass
         * u_params.y - u_lightingPass
         * u_params.z - u_lightCount
         * u_params.w - u_lightIndex
         */
        bgfx::UniformHandle u_params;
        bgfx::UniformHandle u_ambient;
        bgfx::UniformHandle u_diffuse;
        bgfx::UniformHandle u_specular_shininess;
        bgfx::UniformHandle u_color;
        bgfx::UniformHandle u_lightPosRadius;
        bgfx::UniformHandle u_lightRgbInnerR;
    };

    static Uniforms s_uniforms;

//-------------------------------------------------
// Render state
//-------------------------------------------------

    struct RenderState
    {
        enum Enum
        {
            StencilReflection_CraftStencil = 0,
            StencilReflection_DrawReflected,
            StencilReflection_BlendPlane,
            StencilReflection_DrawScene,

            ProjectionShadows_DrawAmbient,
            ProjectionShadows_CraftStencil,
            ProjectionShadows_DrawDiffuse,

            Custom_BlendLightTexture,
            Custom_DrawPlaneBottom,

            Count
        };

        uint64_t m_state;
        uint32_t m_blendFactorRgba;
        uint32_t m_fstencil;
        uint32_t m_bstencil;
    };

    static RenderState s_renderStates[RenderState::Count] =
            {
                    { // StencilReflection_CraftStencil
                            BGFX_STATE_WRITE_RGB
                            | BGFX_STATE_WRITE_Z
                            | BGFX_STATE_DEPTH_TEST_LESS
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_TEST_ALWAYS         // pass always
                              | BGFX_STENCIL_FUNC_REF(1)         // value = 1
                              | BGFX_STENCIL_FUNC_RMASK(0xff)
                              | BGFX_STENCIL_OP_FAIL_S_REPLACE
                              | BGFX_STENCIL_OP_FAIL_Z_REPLACE
                              | BGFX_STENCIL_OP_PASS_Z_REPLACE   // store the value
                            , BGFX_STENCIL_NONE
                    },
                    { // StencilReflection_DrawReflected
                            BGFX_STATE_WRITE_RGB
                            | BGFX_STATE_WRITE_A
                            | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_SRC_ALPHA, BGFX_STATE_BLEND_INV_SRC_ALPHA)
                            | BGFX_STATE_WRITE_Z
                            | BGFX_STATE_DEPTH_TEST_LESS
                            | BGFX_STATE_CULL_CW    //reflection matrix has inverted normals. using CCW instead of CW.
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_TEST_EQUAL
                              | BGFX_STENCIL_FUNC_REF(1)
                              | BGFX_STENCIL_FUNC_RMASK(1)
                              | BGFX_STENCIL_OP_FAIL_S_KEEP
                              | BGFX_STENCIL_OP_FAIL_Z_KEEP
                              | BGFX_STENCIL_OP_PASS_Z_KEEP
                            , BGFX_STENCIL_NONE
                    },
                    { // StencilReflection_BlendPlane
                            BGFX_STATE_WRITE_RGB
                            | BGFX_STATE_WRITE_Z
                            | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_SRC_COLOR)
                            | BGFX_STATE_DEPTH_TEST_LESS
                            | BGFX_STATE_CULL_CCW
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_NONE
                            , BGFX_STENCIL_NONE
                    },
                    { // StencilReflection_DrawScene
                            BGFX_STATE_WRITE_RGB
                            | BGFX_STATE_WRITE_Z
                            | BGFX_STATE_DEPTH_TEST_LESS
                            | BGFX_STATE_CULL_CCW
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_NONE
                            , BGFX_STENCIL_NONE
                    },
                    { // ProjectionShadows_DrawAmbient
                            BGFX_STATE_WRITE_RGB
                            | BGFX_STATE_WRITE_Z // write depth !
                            | BGFX_STATE_DEPTH_TEST_LESS
                            | BGFX_STATE_CULL_CCW
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_NONE
                            , BGFX_STENCIL_NONE
                    },
                    { // ProjectionShadows_CraftStencil
                            BGFX_STATE_DEPTH_TEST_LESS
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_TEST_ALWAYS         // pass always
                              | BGFX_STENCIL_FUNC_REF(1)         // value = 1
                              | BGFX_STENCIL_FUNC_RMASK(0xff)
                              | BGFX_STENCIL_OP_FAIL_S_KEEP
                              | BGFX_STENCIL_OP_FAIL_Z_KEEP
                              | BGFX_STENCIL_OP_PASS_Z_REPLACE   // store the value
                            , BGFX_STENCIL_NONE
                    },
                    { // ProjectionShadows_DrawDiffuse
                            BGFX_STATE_WRITE_RGB
                            | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_ONE, BGFX_STATE_BLEND_ONE)
                            | BGFX_STATE_DEPTH_TEST_EQUAL
                            | BGFX_STATE_CULL_CCW
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_TEST_NOTEQUAL
                              | BGFX_STENCIL_FUNC_REF(1)
                              | BGFX_STENCIL_FUNC_RMASK(1)
                              | BGFX_STENCIL_OP_FAIL_S_KEEP
                              | BGFX_STENCIL_OP_FAIL_Z_KEEP
                              | BGFX_STENCIL_OP_PASS_Z_KEEP
                            , BGFX_STENCIL_NONE
                    },
                    { // Custom_BlendLightTexture
                            BGFX_STATE_WRITE_RGB
                            | BGFX_STATE_WRITE_A
                            | BGFX_STATE_WRITE_Z
                            | BGFX_STATE_DEPTH_TEST_LESS
                            | BGFX_STATE_BLEND_FUNC(BGFX_STATE_BLEND_SRC_COLOR, BGFX_STATE_BLEND_INV_SRC_COLOR)
                            | BGFX_STATE_CULL_CCW
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_NONE
                            , BGFX_STENCIL_NONE
                    },
                    { // Custom_DrawPlaneBottom
                            BGFX_STATE_WRITE_RGB
                            | BGFX_STATE_CULL_CW
                            | BGFX_STATE_MSAA
                            , UINT32_MAX
                            , BGFX_STENCIL_NONE
                            , BGFX_STENCIL_NONE
                    },
            };

    struct ViewState
    {
        ViewState(uint32_t _width = 0, uint32_t _height = 0)
                : m_width(_width)
                , m_height(_height)
        {
        }

        uint32_t m_width;
        uint32_t m_height;

        float m_view[16];
        float m_proj[16];
    };

    struct ClearValues
    {
        ClearValues(uint32_t _clearRgba     = 0x30303000
                , float    _clearDepth    = 1.0f
                , uint8_t  _clearStencil  = 0
        )
                : m_clearRgba(_clearRgba)
                , m_clearDepth(_clearDepth)
                , m_clearStencil(_clearStencil)
        { }

        uint32_t m_clearRgba;
        float    m_clearDepth;
        uint8_t  m_clearStencil;
    };

    void clearView(bgfx::ViewId _id, uint8_t _flags, const ClearValues& _clearValues)
    {
        bgfx::setViewClear(_id
                , _flags
                , _clearValues.m_clearRgba
                , _clearValues.m_clearDepth
                , _clearValues.m_clearStencil
        );

        // Keep track of cleared views
        s_clearMask |= 1 << _id;
    }

    void clearViewMask(uint32_t _viewMask, uint8_t _flags, const ClearValues& _clearValues)
    {
        setViewClearMask(_viewMask
                , _flags
                , _clearValues.m_clearRgba
                , _clearValues.m_clearDepth
                , _clearValues.m_clearStencil
        );

        // Keep track of cleared views
        s_clearMask |= _viewMask;
    }

    /*struct Aabb
    {
        float m_min[3];
        float m_max[3];
    };

    struct Obb
    {
        float m_mtx[16];
    };

    struct Sphere
    {
        float m_center[3];
        float m_radius;
    };*/

    struct Primitive
    {
        uint32_t m_startIndex;
        uint32_t m_numIndices;
        uint32_t m_startVertex;
        uint32_t m_numVertices;

        Sphere m_sphere;
        Aabb m_aabb;
        Obb m_obb;
    };

    typedef std::vector<Primitive> PrimitiveArray;

    struct Group
    {
        Group()
        {
            reset();
        }

        void reset()
        {
            m_vbh.idx = bgfx::kInvalidHandle;
            m_ibh.idx = bgfx::kInvalidHandle;
            m_prims.clear();
        }

        bgfx::VertexBufferHandle m_vbh;
        bgfx::IndexBufferHandle m_ibh;
        Sphere m_sphere;
        Aabb m_aabb;
        Obb m_obb;
        PrimitiveArray m_prims;
    };

    struct Mesh
    {
        void load(const void* _vertices, uint32_t _numVertices, const bgfx::VertexLayout _layout, const uint16_t* _indices, uint32_t _numIndices)
        {
            Group group;
            const bgfx::Memory* mem;
            uint32_t size;

            size = _numVertices*_layout.getStride();
            mem = bgfx::makeRef(_vertices, size);
            group.m_vbh = bgfx::createVertexBuffer(mem, _layout);

            size = _numIndices*2;
            mem = bgfx::makeRef(_indices, size);
            group.m_ibh = bgfx::createIndexBuffer(mem);

            m_groups.push_back(group);
        }

        void load(const char* _filePath)
        {
#define BGFX_CHUNK_MAGIC_VB  BX_MAKEFOURCC('V', 'B', ' ', 0x1)
#define BGFX_CHUNK_MAGIC_IB  BX_MAKEFOURCC('I', 'B', ' ', 0x0)
#define BGFX_CHUNK_MAGIC_PRI BX_MAKEFOURCC('P', 'R', 'I', 0x0)

            bx::FileReaderI* reader = entry::getFileReader();
            bx::open(reader, _filePath);

            Group group;

            uint32_t chunk;
            while (4 == bx::read(reader, chunk) )
            {
                switch (chunk)
                {
                    case BGFX_CHUNK_MAGIC_VB:
                    {
                        bx::read(reader, group.m_sphere);
                        bx::read(reader, group.m_aabb);
                        bx::read(reader, group.m_obb);

                        bgfx::read(reader, m_layout);
                        uint16_t stride = m_layout.getStride();

                        uint16_t numVertices;
                        bx::read(reader, numVertices);
                        const bgfx::Memory* mem = bgfx::alloc(numVertices*stride);
                        bx::read(reader, mem->data, mem->size);

                        group.m_vbh = bgfx::createVertexBuffer(mem, m_layout);
                    }
                        break;

                    case BGFX_CHUNK_MAGIC_IB:
                    {
                        uint32_t numIndices;
                        bx::read(reader, numIndices);
                        const bgfx::Memory* mem = bgfx::alloc(numIndices*2);
                        bx::read(reader, mem->data, mem->size);
                        group.m_ibh = bgfx::createIndexBuffer(mem);
                    }
                        break;

                    case BGFX_CHUNK_MAGIC_PRI:
                    {
                        uint16_t len;
                        bx::read(reader, len);

                        std::string material;
                        material.resize(len);
                        bx::read(reader, const_cast<char*>(material.c_str() ), len);

                        uint16_t num;
                        bx::read(reader, num);

                        for (uint32_t ii = 0; ii < num; ++ii)
                        {
                            bx::read(reader, len);

                            std::string name;
                            name.resize(len);
                            bx::read(reader, const_cast<char*>(name.c_str() ), len);

                            Primitive prim;
                            bx::read(reader, prim.m_startIndex);
                            bx::read(reader, prim.m_numIndices);
                            bx::read(reader, prim.m_startVertex);
                            bx::read(reader, prim.m_numVertices);
                            bx::read(reader, prim.m_sphere);
                            bx::read(reader, prim.m_aabb);
                            bx::read(reader, prim.m_obb);

                            group.m_prims.push_back(prim);
                        }

                        m_groups.push_back(group);
                        group.reset();
                    }
                        break;

                    default:
                        DBG("%08x at %d", chunk, bx::seek(reader) );
                        abort();
                        break;
                }
            }

            bx::close(reader);
        }

        void unload()
        {
            for (GroupArray::const_iterator it = m_groups.begin(), itEnd = m_groups.end(); it != itEnd; ++it)
            {
                const Group& group = *it;
                bgfx::destroy(group.m_vbh);

                if (bgfx::isValid(group.m_ibh) )
                {
                    bgfx::destroy(group.m_ibh);
                }
            }
            m_groups.clear();
        }

        void submit(bgfx::ViewId _id, float* _mtx, bgfx::ProgramHandle _program, const RenderState& _renderState)
        {
            bgfx::TextureHandle texture = BGFX_INVALID_HANDLE;
            submit(_id, _mtx, _program, _renderState, texture);
        }

        void submit(bgfx::ViewId _id, float* _mtx, bgfx::ProgramHandle _program, const RenderState& _renderState, bgfx::TextureHandle _texture)
        {
            for (GroupArray::const_iterator it = m_groups.begin(), itEnd = m_groups.end(); it != itEnd; ++it)
            {
                const Group& group = *it;

                // Set uniforms
                s_uniforms.submitPerDrawUniforms();

                // Set model matrix for rendering.
                bgfx::setTransform(_mtx);
                bgfx::setIndexBuffer(group.m_ibh);
                bgfx::setVertexBuffer(0, group.m_vbh);

                // Set texture
                bgfx::setTexture(0, s_texColor, _texture);

                // Apply render state
                bgfx::setStencil(_renderState.m_fstencil, _renderState.m_bstencil);
                bgfx::setState(_renderState.m_state, _renderState.m_blendFactorRgba);

                // Submit
                bgfx::submit(_id, _program);

                // Keep track of submited view ids
                s_viewMask |= 1 << _id;
            }
        }

        bgfx::VertexLayout m_layout;
        typedef std::vector<Group> GroupArray;
        GroupArray m_groups;
    };
}